CREATE OR REPLACE PACKAGE user_mgmt_pkg IS

  PROCEDURE sp_register_user (
    p_firstname      IN USERS.FIRSTNAME%TYPE,
    p_lastname       IN USERS.LASTNAME%TYPE,
    p_email          IN USERS.EMAIL%TYPE,
    p_phonenumber    IN USERS.PHONENUMBER%TYPE,
    p_passwordhash   IN USERS.PASSWORDHASH%TYPE,
    p_role           IN USERS.ROLE%TYPE
  );

  PROCEDURE sp_update_user (
    p_userid         IN USERS.USERID%TYPE,
    p_firstname      IN USERS.FIRSTNAME%TYPE,
    p_lastname       IN USERS.LASTNAME%TYPE,
    p_phonenumber    IN USERS.PHONENUMBER%TYPE
  );

  PROCEDURE sp_add_address (
    p_userid         IN ADDRESS.USERID%TYPE,
    p_addressline1   IN ADDRESS.ADDRESSLINE1%TYPE,
    p_addressline2   IN ADDRESS.ADDRESSLINE2%TYPE,
    p_zipcode        IN ADDRESS.ZIPCODE%TYPE,
    p_city           IN ADDRESS.CITY%TYPE,
    p_state          IN ADDRESS.STATE%TYPE,
    p_country        IN ADDRESS.COUNTRY%TYPE
  );

END user_mgmt_pkg;
/