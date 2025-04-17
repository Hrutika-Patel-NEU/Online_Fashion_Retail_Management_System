CREATE OR REPLACE PACKAGE BODY user_mgmt_pkg IS

  PROCEDURE sp_register_user (
    p_firstname      IN USERS.FIRSTNAME%TYPE,
    p_lastname       IN USERS.LASTNAME%TYPE,
    p_email          IN USERS.EMAIL%TYPE,
    p_phonenumber    IN USERS.PHONENUMBER%TYPE,
    p_passwordhash   IN USERS.PASSWORDHASH%TYPE,
    p_role           IN USERS.ROLE%TYPE
  ) IS
    v_userid USERS.USERID%TYPE;
    v_count  NUMBER;
  BEGIN
    IF UPPER(p_role) NOT IN ('ADMIN', 'CUSTOMER') THEN
      RAISE_APPLICATION_ERROR(-20001, 'Invalid role. Only ADMIN and CUSTOMER allowed.');
    END IF;

    SELECT COUNT(*) INTO v_count
    FROM USERS
    WHERE LOWER(EMAIL) = LOWER(TRIM(p_email))
       OR PHONENUMBER = TRIM(p_phonenumber);

    IF v_count > 0 THEN
      RAISE_APPLICATION_ERROR(-20003, 'Email or phone number already exists.');
    END IF;

    SELECT USER_SEQ.NEXTVAL INTO v_userid FROM dual;

    INSERT INTO USERS (
      USERID, FIRSTNAME, LASTNAME, EMAIL, PHONENUMBER,
      PASSWORDHASH, ROLE, CREATEDAT, UPDATEDAT
    ) VALUES (
      v_userid, p_firstname, p_lastname, TRIM(p_email), TRIM(p_phonenumber),
      p_passwordhash, p_role, SYSTIMESTAMP, SYSTIMESTAMP
    );

    DBMS_OUTPUT.PUT_LINE('User registered successfully. USERID = ' || v_userid);
  END;

  PROCEDURE sp_update_user (
    p_userid         IN USERS.USERID%TYPE,
    p_firstname      IN USERS.FIRSTNAME%TYPE,
    p_lastname       IN USERS.LASTNAME%TYPE,
    p_phonenumber    IN USERS.PHONENUMBER%TYPE
  ) IS
  BEGIN
    UPDATE USERS
    SET FIRSTNAME = p_firstname,
        LASTNAME = p_lastname,
        PHONENUMBER = p_phonenumber,
        UPDATEDAT = SYSTIMESTAMP
    WHERE USERID = p_userid;

    IF SQL%ROWCOUNT = 0 THEN
      RAISE_APPLICATION_ERROR(-20005, 'User not found.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('User updated successfully.');
  END;

  PROCEDURE sp_add_address (
    p_userid         IN ADDRESS.USERID%TYPE,
    p_addressline1   IN ADDRESS.ADDRESSLINE1%TYPE,
    p_addressline2   IN ADDRESS.ADDRESSLINE2%TYPE,
    p_zipcode        IN ADDRESS.ZIPCODE%TYPE,
    p_city           IN ADDRESS.CITY%TYPE,
    p_state          IN ADDRESS.STATE%TYPE,
    p_country        IN ADDRESS.COUNTRY%TYPE
  ) IS
    v_address_id     ADDRESS.ADDRESSID%TYPE;
  BEGIN
    SELECT ADDRESS_SEQ.NEXTVAL INTO v_address_id FROM dual;

    INSERT INTO ADDRESS (
      ADDRESSID, USERID, ADDRESSLINE1, ADDRESSLINE2, ZIPCODE,
      CITY, STATE, COUNTRY, CREATEDAT, UPDATEDAT
    ) VALUES (
      v_address_id, p_userid, p_addressline1, p_addressline2, p_zipcode,
      p_city, p_state, p_country, SYSTIMESTAMP, SYSTIMESTAMP
    );

    DBMS_OUTPUT.PUT_LINE('Address inserted. ID = ' || v_address_id);
  END;

END user_mgmt_pkg;
/