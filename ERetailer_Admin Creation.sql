SET SERVEROUTPUT ON;

DECLARE
    user_exists NUMBER;
    TYPE PrivilegeList IS TABLE OF VARCHAR2(50);
    privileges PrivilegeList := PrivilegeList(
        'CONNECT',
        'CREATE SESSION',
        'ALTER SESSION',
        'CREATE TABLE',
        'CREATE VIEW',
        'CREATE SEQUENCE',
        'CREATE SYNONYM',
        'CREATE DATABASE LINK',
        'RESOURCE',
        'UNLIMITED TABLESPACE',
        'CREATE ROLE',
        'CREATE USER',
        'ALTER USER',
        'DROP USER',
        'GRANT ANY ROLE',
        'SELECT ANY TABLE'
    );
BEGIN
    SELECT COUNT(*) INTO user_exists FROM all_users WHERE username = 'ERETAILER_DBA';
    
    IF user_exists = 0 THEN
        EXECUTE IMMEDIATE 'CREATE USER ERetailer_DBA IDENTIFIED BY "ERetailerDBA#123" DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON users';
        DBMS_OUTPUT.PUT_LINE('ERetailer_DBA user created successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('ERetailer_DBA user already exists; creation skipped.');
    END IF;

    -- Grant privileges with exception handling
    DECLARE
        priv_error VARCHAR2(100);
    BEGIN
        FOR i IN privileges.FIRST .. privileges.LAST LOOP
            BEGIN
                EXECUTE IMMEDIATE 'GRANT ' || privileges(i) || ' TO ERetailer_DBA WITH ADMIN OPTION';
                DBMS_OUTPUT.PUT_LINE('Granted ' || privileges(i) || ' to ERETAILER_DBA.');
            EXCEPTION
                WHEN OTHERS THEN
                    priv_error := SQLERRM;
                    DBMS_OUTPUT.PUT_LINE('Failed to grant ' || privileges(i) || ': ' || priv_error);
            END;
        END LOOP;
    END;

    DBMS_OUTPUT.PUT_LINE('ERetailer_DBA user setup completed.');

END;
/
