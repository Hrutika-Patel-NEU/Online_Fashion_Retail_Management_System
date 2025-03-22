SET SERVEROUTPUT ON;

DECLARE
   v_count NUMBER := 0;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM USER_TABLES
   WHERE TABLE_NAME = 'COLORS';

   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE TABLE Colors (
            ColorID NUMBER(10),
            ColorName VARCHAR2(50) UNIQUE NOT NULL,
            CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            PRIMARY KEY (ColorID)
         )
      ';
      DBMS_OUTPUT.PUT_LINE('Colors table created.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Colors table already exists. No need to create.');
   END IF;
END;
/