BEGIN
   FOR user_name IN (
    SELECT username 
    FROM all_users 
    WHERE username IN (
      'ECOM_APP_ADMIN', 
      'ECOM_APP_USER', 
      'ECOM_APP_REPORT_USER', 
      'ECOM_APP_GUEST_USER'
    )
   )
   LOOP
      BEGIN
         EXECUTE IMMEDIATE 'DROP USER ' || user_name.username || ' CASCADE';
         DBMS_OUTPUT.PUT_LINE('Dropped user: ' || user_name.username);
      EXCEPTION
         WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Could not drop user: ' || user_name.username || ' - ' || SQLERRM);
      END;
   END LOOP;
END;
/

-- Create users with secure passwords
CREATE USER ecom_app_admin IDENTIFIED BY "AdminPassword#123" DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON users;
CREATE USER ecom_app_user IDENTIFIED BY "UserPassword#123" DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON users;
CREATE USER ecom_app_report_user IDENTIFIED BY "ReportUserPassword#123" DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON users;
CREATE USER ecom_app_guest_user IDENTIFIED BY "GuestPassword#123" DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON users;

-- Grant basic session access
GRANT CREATE SESSION TO ecom_app_admin, ecom_app_user, ecom_app_report_user, ecom_app_guest_user;

-- Grant DML privileges on all existing tables
BEGIN
   FOR t IN (
       SELECT table_name FROM all_tables WHERE owner = 'ERETAILER_DBA'
   ) LOOP
      EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE, DELETE ON ERETAILER_DBA.' || t.table_name || ' TO ecom_app_admin';
   END LOOP;
END;
/
-- Grant DML access on key transactional tables
BEGIN
   FOR t IN (
       SELECT table_name FROM all_tables 
       WHERE owner = 'ERETAILER_DBA' AND table_name IN (
           'USERS', 'ADDRESS', 'SHOPPINGCART', 'ORDERS', 'ORDERLINEITEMS', 'REVIEWS'
       )
   ) LOOP
      EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE, DELETE ON ERETAILER_DBA.' || t.table_name || ' TO ecom_app_user';
   END LOOP;
END;
/

-- REPORT USER: Read-only access to all tables
BEGIN
   FOR t IN (
       SELECT table_name FROM all_tables WHERE owner = 'ERETAILER_DBA'
   ) LOOP
      EXECUTE IMMEDIATE 'GRANT SELECT ON ERETAILER_DBA.' || t.table_name || ' TO ecom_app_report_user';
   END LOOP;
END;
/

-- GUEST USER: Read-only access to public info (catalog only)
BEGIN
   FOR t IN (
       SELECT table_name FROM all_tables 
       WHERE owner = 'ERETAILER_DBA' AND table_name IN (
           'PRODUCTS', 'PRODUCTCATEGORIES', 'PRODUCTIMAGES', 'BRANDS', 'PRODUCTVARIATIONS', 'COLORS', 'SIZEOPTIONS'
       )
   ) LOOP
      EXECUTE IMMEDIATE 'GRANT SELECT ON ERETAILER_DBA.' || t.table_name || ' TO ecom_app_guest_user';
   END LOOP;
END;
/
