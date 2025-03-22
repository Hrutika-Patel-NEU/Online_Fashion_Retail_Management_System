SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'SIZEOPTIONS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE SizeOptions (
            SizeID NUMBER(10),
            SizeName VARCHAR2(50) UNIQUE NOT NULL,
            SizeDescription VARCHAR2(255),
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (SizeID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('SizeOptions table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('SizeOptions table already exists. No need to create.');
   END IF;
END;
/