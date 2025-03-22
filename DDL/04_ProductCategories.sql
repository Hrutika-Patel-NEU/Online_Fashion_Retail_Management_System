SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'PRODUCTCATEGORIES';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE ProductCategories (
            CategoryID NUMBER(10),
            CategoryName VARCHAR2(255) NOT NULL,
            CategoryDescription CLOB,
            CategoryType VARCHAR2(100) NOT NULL,
            CategoryImage VARCHAR2(255),
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (CategoryID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('ProductCategories table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('ProductCategories table already exists. No need to create.');
   END IF;
END;
/