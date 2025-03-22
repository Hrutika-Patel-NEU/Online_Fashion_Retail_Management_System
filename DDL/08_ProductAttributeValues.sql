SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'PRODUCTATTRIBUTEVALUES';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE ProductAttributeValues (
            ValueID NUMBER(10),
            AttributeID NUMBER(10),
            ValueName VARCHAR2(255) NOT NULL,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (ValueID),
            FOREIGN KEY (AttributeID) REFERENCES ProductAttributes(AttributeID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('ProductAttributeValues table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('ProductAttributeValues table already exists. No need to create.');
   END IF;
END;
/