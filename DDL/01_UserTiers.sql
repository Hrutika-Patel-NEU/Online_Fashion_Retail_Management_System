SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'USERTIERS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE UserTiers (
            TierID NUMBER(10),
            TierName VARCHAR2(50) UNIQUE NOT NULL,
            DiscountRate NUMBER(5,2) CHECK (DiscountRate BETWEEN 0 AND 100) NOT NULL,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (TierID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('UserTiers table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('UserTiers table already exists. No need to create.');
   END IF;
END;
/