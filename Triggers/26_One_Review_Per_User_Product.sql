-- 26_One_Review_Per_User_Product.sql
-- Prevents duplicate reviews by the same user on the same product

CREATE OR REPLACE TRIGGER "ERETAILER_DBA"."TRG_OneReviewPerUserProduct"
BEFORE INSERT ON "ERETAILER_DBA"."REVIEWS"
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM "ERETAILER_DBA"."REVIEWS"
    WHERE USERID = :NEW.USERID
      AND PRODUCTID = :NEW.PRODUCTID;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20031, 'You have already reviewed this product.');
    END IF;
END;
/

