-- 08_CreatedAt_and_UpdatedAt_Triggers_For_Orderlineitems.sql
-- This script creates BEFORE INSERT and BEFORE INSERT OR UPDATE triggers to auto-set CREATEDAT and UPDATEDAT timestamps on the ORDERLINEITEMS table.

CREATE OR REPLACE TRIGGER TRG_ORDERLINEITEMS_CreatedAt
BEFORE INSERT ON ORDERLINEITEMS
FOR EACH ROW
BEGIN
  :NEW.CREATEDAT := CURRENT_TIMESTAMP;
END;
/

CREATE OR REPLACE TRIGGER TRG_ORDERLINEITEMS_UpdatedAt
BEFORE INSERT OR UPDATE ON ORDERLINEITEMS
FOR EACH ROW
BEGIN
  :NEW.UPDATEDAT := CURRENT_TIMESTAMP;
END;
/
