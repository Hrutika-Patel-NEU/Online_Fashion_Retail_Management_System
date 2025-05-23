-- 14_CreatedAt_and_UpdatedAt_Triggers_For_Productattributevalues.sql
-- This script creates BEFORE INSERT and BEFORE INSERT OR UPDATE triggers to auto-set CREATEDAT and UPDATEDAT timestamps on the PRODUCTATTRIBUTEVALUES table.

CREATE OR REPLACE TRIGGER TRG_PRODUCTATTRIBUTEVALUES_CreatedAt
BEFORE INSERT ON PRODUCTATTRIBUTEVALUES
FOR EACH ROW
BEGIN
  :NEW.CREATEDAT := CURRENT_TIMESTAMP;
END;
/

CREATE OR REPLACE TRIGGER TRG_PRODUCTATTRIBUTEVALUES_UpdatedAt
BEFORE INSERT OR UPDATE ON PRODUCTATTRIBUTEVALUES
FOR EACH ROW
BEGIN
  :NEW.UPDATEDAT := CURRENT_TIMESTAMP;
END;
/
