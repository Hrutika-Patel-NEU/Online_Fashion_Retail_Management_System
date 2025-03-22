SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'PRODUCTIMAGES';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE ProductImages (
            ProductImageID NUMBER(10),
            VariationID NUMBER(10),
            ProductImageUrl VARCHAR2(255) NOT NULL,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (ProductImageID),
            FOREIGN KEY (VariationID) REFERENCES ProductVariations(VariationID) ON DELETE CASCADE
         )
      ';
      DBMS_OUTPUT.PUT_LINE('ProductImages table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('ProductImages table already exists. No need to create.');
   END IF;
END;
/