SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'ORDERLINEITEMS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE OrderLineItems (
            OrderLineID NUMBER(10),
            OrderID NUMBER(10),
            VariationID NUMBER(10),
            SoldPrice NUMBER(10,2) NOT NULL,
            Quantity NUMBER(10) NOT NULL CHECK (Quantity > 0),
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (OrderLineID),
            FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE,
            FOREIGN KEY (VariationID) REFERENCES ProductVariations(VariationID) ON DELETE CASCADE
         )
      ';
      DBMS_OUTPUT.PUT_LINE('OrderLineItems table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('OrderLineItems table already exists. No need to create.');
   END IF;
END;
/