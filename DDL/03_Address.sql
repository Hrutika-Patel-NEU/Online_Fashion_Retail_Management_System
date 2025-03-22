SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'ADDRESS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE Address (
            AddressID NUMBER(10),
            UserID NUMBER(10),
            AddressLine1 VARCHAR2(255) NOT NULL,
            AddressLine2 VARCHAR2(255),
            ZipCode VARCHAR2(20) NOT NULL,
            City VARCHAR2(100) NOT NULL,
            State VARCHAR2(100) NOT NULL,
            Country VARCHAR2(100) NOT NULL,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (AddressID),
            FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE
         )
      ';
      DBMS_OUTPUT.PUT_LINE('Address table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Address table already exists. No need to create.');
   END IF;
END;
/