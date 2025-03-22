SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'PRODUCTATTRIBUTEMAPPING';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE ProductAttributeMapping (
            ProductID NUMBER(10),
            ValueID NUMBER(10),
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (ProductID, ValueID),
            FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
            FOREIGN KEY (ValueID) REFERENCES ProductAttributeValues(ValueID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('ProductAttributeMapping table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('ProductAttributeMapping table already exists. No need to create.');
   END IF;
END;
/