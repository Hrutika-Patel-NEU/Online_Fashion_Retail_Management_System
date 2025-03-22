SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'USERS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE Users (
            UserID NUMBER(10),
            FirstName VARCHAR2(100) NOT NULL,
            LastName VARCHAR2(100) NOT NULL,
            Email VARCHAR2(255) UNIQUE NOT NULL,
            PasswordHash VARCHAR2(255) NOT NULL,
            PhoneNumber VARCHAR2(20) UNIQUE NOT NULL,
            Role VARCHAR2(20) CHECK (Role IN (''Customer'', ''Admin'')) NOT NULL,
            UserTierID NUMBER(10) DEFAULT 1,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (UserID),
            FOREIGN KEY (UserTierID) REFERENCES UserTiers(TierID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('Users table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Users table already exists. No need to create.');
   END IF;
END;
/