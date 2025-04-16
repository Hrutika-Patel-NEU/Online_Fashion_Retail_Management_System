-- 21_Prevent_Add_Unavailable_Products.sql
-- Prevents adding unavailable, archived, or out-of-stock products to the cart

CREATE OR REPLACE TRIGGER "ERETAILER_DBA"."TRG_PreventAddUnavailableProducts"
BEFORE INSERT ON "ERETAILER_DBA"."SHOPPINGCART"
FOR EACH ROW
DECLARE
    v_available CHAR(1);
    v_archived CHAR(1);
    v_stock NUMBER;
BEGIN
    SELECT P.ISAVAILABLE, P.ISARCHIVED, V.STOCKQUANTITY
    INTO v_available, v_archived, v_stock
    FROM "ERETAILER_DBA"."PRODUCTS" P
    JOIN "ERETAILER_DBA"."PRODUCTVARIATIONS" V
      ON P.PRODUCTID = V.PRODUCTID
    WHERE V.VARIATIONID = :NEW.VARIATIONID;

    IF v_available = 'N' THEN
        RAISE_APPLICATION_ERROR(-20010, 'This product is marked unavailable.');
    ELSIF v_archived = 'Y' THEN
        RAISE_APPLICATION_ERROR(-20011, 'This product is archived and cannot be added.');
    ELSIF v_stock <= 0 THEN
        RAISE_APPLICATION_ERROR(-20012, 'This product variation is out of stock.');
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20013, 'Product variation not found.');
END;
/



