-- 25_Verified_Buyer_Only.sql
-- Prevents unverified users from submitting a product review

CREATE OR REPLACE TRIGGER "ERETAILER_DBA"."TRG_VerifiedBuyerOnly"
BEFORE INSERT ON "ERETAILER_DBA"."REVIEWS"
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    -- Check if user has purchased any variation of this product
    SELECT COUNT(*)
    INTO v_count
    FROM "ERETAILER_DBA"."ORDERS" O
    JOIN "ERETAILER_DBA"."ORDERLINEITEMS" OL ON O.ORDERID = OL.ORDERID
    JOIN "ERETAILER_DBA"."PRODUCTVARIATIONS" V ON OL.VARIATIONID = V.VARIATIONID
    WHERE O.USERID = :NEW.USERID
      AND V.PRODUCTID = :NEW.PRODUCTID;

    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20030, 'Only verified buyers can submit a review for this product.');
    END IF;
END;
/
