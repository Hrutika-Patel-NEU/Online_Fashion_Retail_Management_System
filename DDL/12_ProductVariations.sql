SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'PRODUCTVARIATIONS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE ProductVariations (
            VariationID NUMBER(10),
            ProductID NUMBER(10),
            SizeID NUMBER(10),
            ColorID NUMBER(10),
            StockQuantity NUMBER(10) DEFAULT 0 CHECK (StockQuantity >= 0),
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (VariationID),
            FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
            FOREIGN KEY (SizeID) REFERENCES SizeOptions(SizeID),
            FOREIGN KEY (ColorID) REFERENCES Colors(ColorID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('ProductVariations table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('ProductVariations table already exists. No need to create.');
   END IF;
END;
/