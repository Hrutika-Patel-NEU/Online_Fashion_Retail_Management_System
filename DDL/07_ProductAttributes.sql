SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'PRODUCTATTRIBUTES';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE ProductAttributes (
            AttributeID NUMBER(10),
            AttributeName VARCHAR2(255) NOT NULL,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (AttributeID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('ProductAttributes table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('ProductAttributes table already exists. No need to create.');
   END IF;
END;
/