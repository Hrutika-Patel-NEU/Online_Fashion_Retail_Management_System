SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'PRODUCTS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE Products (
            ProductID NUMBER(10),
            CategoryID NUMBER(10),
            BrandID NUMBER(10),
            ProductName VARCHAR2(255) NOT NULL,
            Description CLOB,
            Price NUMBER(10,2) NOT NULL,
            SizeGuide CLOB,
            MaterialDetails CLOB,
            CareInstructions CLOB,
            IsAvailable CHAR(1) DEFAULT ''Y'' CHECK (IsAvailable IN (''Y'', ''N'')),
            IsArchived CHAR(1) DEFAULT ''N'' CHECK (IsArchived IN (''Y'', ''N'')),
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (ProductID),
            FOREIGN KEY (CategoryID) REFERENCES ProductCategories(CategoryID),
            FOREIGN KEY (BrandID) REFERENCES Brands(BrandID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('Products table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Products table already exists. No need to create.');
   END IF;
END;
/