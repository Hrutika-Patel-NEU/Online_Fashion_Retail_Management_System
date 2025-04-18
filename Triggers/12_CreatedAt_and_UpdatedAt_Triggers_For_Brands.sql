-- 12_CreatedAt_and_UpdatedAt_Triggers_For_Brands.sql
-- This script creates BEFORE INSERT and BEFORE INSERT OR UPDATE triggers to auto-set CREATEDAT and UPDATEDAT timestamps on the BRANDS table.

CREATE OR REPLACE TRIGGER TRG_BRANDS_CreatedAt
BEFORE INSERT ON BRANDS
FOR EACH ROW
BEGIN
  :NEW.CREATEDAT := CURRENT_TIMESTAMP;
END;
/

CREATE OR REPLACE TRIGGER TRG_BRANDS_UpdatedAt
BEFORE INSERT OR UPDATE ON BRANDS
FOR EACH ROW
BEGIN
  :NEW.UPDATEDAT := CURRENT_TIMESTAMP;
END;
/
