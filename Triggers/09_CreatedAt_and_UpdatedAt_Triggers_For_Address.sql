-- 09_CreatedAt_and_UpdatedAt_Triggers_For_Address.sql
-- This script creates BEFORE INSERT and BEFORE INSERT OR UPDATE triggers to auto-set CREATEDAT and UPDATEDAT timestamps on the ADDRESS table.

CREATE OR REPLACE TRIGGER TRG_ADDRESS_CreatedAt
BEFORE INSERT ON ADDRESS
FOR EACH ROW
BEGIN
  :NEW.CREATEDAT := CURRENT_TIMESTAMP;
END;
/

CREATE OR REPLACE TRIGGER TRG_ADDRESS_UpdatedAt
BEFORE INSERT OR UPDATE ON ADDRESS
FOR EACH ROW
BEGIN
  :NEW.UPDATEDAT := CURRENT_TIMESTAMP;
END;
/
