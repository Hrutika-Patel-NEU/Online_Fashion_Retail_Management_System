create or replace FUNCTION get_user_full_name(
    p_user_id IN USERS.USERID%TYPE
) RETURN VARCHAR2
IS
    v_full_name VARCHAR2(200);
BEGIN
    SELECT FIRSTNAME || ' ' || LASTNAME
    INTO v_full_name
    FROM USERS
    WHERE USERID = p_user_id;

    RETURN v_full_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Unknown User';
    WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20006, 'Multiple users found with same ID.');
END;
/
--Added EXECUTE grants for get_user_full_name to admin, user, and report roles
GRANT EXECUTE ON get_user_full_name TO ecom_app_admin;
GRANT EXECUTE ON get_user_full_name TO ecom_app_user;
GRANT EXECUTE ON get_user_full_name TO ecom_app_report_user;
