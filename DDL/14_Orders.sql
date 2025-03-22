SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'ORDERS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE Orders (
            OrderID NUMBER(10),
            UserID NUMBER(10),
            Status VARCHAR2(50) NOT NULL,
            PaymentMethod VARCHAR2(100) NOT NULL,
            PaymentStatus VARCHAR2(50) NOT NULL,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (OrderID),
            FOREIGN KEY (UserID) REFERENCES Users(UserID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('Orders table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Orders table already exists. No need to create.');
   END IF;
END;
/