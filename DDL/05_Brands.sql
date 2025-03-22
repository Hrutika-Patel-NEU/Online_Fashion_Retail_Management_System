SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'BRANDS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE Brands (
            BrandID NUMBER(10),
            BrandName VARCHAR2(255) NOT NULL,
            BrandDescription CLOB,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (BrandID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('Brands table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Brands table already exists. No need to create.');
   END IF;
END;
/