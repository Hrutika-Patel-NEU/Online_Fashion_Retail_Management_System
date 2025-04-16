-- 22_Require_Image_Before_Publishing.sql
-- Prevents publishing a product unless it has at least one image

CREATE OR REPLACE TRIGGER "ERETAILER_DBA"."TRG_RequireImageBeforePublishing"
BEFORE UPDATE ON "ERETAILER_DBA"."PRODUCTS"
FOR EACH ROW
DECLARE
    v_image_count NUMBER;
BEGIN
    IF :NEW.ISAVAILABLE = 'Y' AND :OLD.ISAVAILABLE <> 'Y' THEN
        SELECT COUNT(*)
        INTO v_image_count
        FROM "ERETAILER_DBA"."PRODUCTVARIATIONS" V
        JOIN "ERETAILER_DBA"."PRODUCTIMAGES" I
          ON V.VARIATIONID = I.VARIATIONID
        WHERE V.PRODUCTID = :NEW.PRODUCTID;

        IF v_image_count = 0 THEN
            RAISE_APPLICATION_ERROR(-20020, 'Cannot publish product: No images found for any variation.');
        END IF;
    END IF;
END;
/


