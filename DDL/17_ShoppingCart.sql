SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'SHOPPINGCART';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE ShoppingCart (
            CartID NUMBER(10),
            UserID NUMBER(10),
            VariationID NUMBER(10),
            Quantity NUMBER(10) DEFAULT 1 CHECK (Quantity > 0),
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (CartID),
            FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
            FOREIGN KEY (VariationID) REFERENCES ProductVariations(VariationID) ON DELETE CASCADE
         )
      ';
      DBMS_OUTPUT.PUT_LINE('ShoppingCart table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('ShoppingCart table already exists. No need to create.');
   END IF;
END;
/