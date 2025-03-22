SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'REVIEWS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE Reviews (
            ReviewID NUMBER(10),
            ProductID NUMBER(10),
            UserID NUMBER(10),
            Rating NUMBER(1) CHECK (Rating BETWEEN 1 AND 5) NOT NULL,
            ReviewComment CLOB,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (ReviewID),
            FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE CASCADE,
            FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE
         )
      ';
      DBMS_OUTPUT.PUT_LINE('Reviews table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Reviews table already exists. No need to create.');
   END IF;
END;
/