-- 18_Check_Stock_Before_Order.sql
-- Prevents insertion into ORDERLINEITEMS if requested quantity exceeds stock.

CREATE OR REPLACE TRIGGER TRG_CheckStockBeforeOrder
BEFORE INSERT ON ORDERLINEITEMS
FOR EACH ROW
DECLARE
    v_stock NUMBER;

    -- Custom exception messages
    e_insufficient_stock EXCEPTION;
    e_variation_not_found EXCEPTION;

BEGIN
    -- Attempt to fetch stock
    SELECT STOCKQUANTITY
    INTO v_stock
    FROM PRODUCTVARIATIONS
    WHERE VARIATIONID = :NEW.VARIATIONID;

    -- Raise custom exception if stock insufficient
    IF :NEW.QUANTITY > v_stock THEN
        RAISE e_insufficient_stock;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE e_variation_not_found;
    WHEN e_insufficient_stock THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient stock for the selected product variation.');
    WHEN e_variation_not_found THEN
        RAISE_APPLICATION_ERROR(-20002, 'Product variation not found.');
END;
/



