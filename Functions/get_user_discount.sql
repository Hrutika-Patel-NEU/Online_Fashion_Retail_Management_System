create or replace FUNCTION get_user_discount(
    p_user_id IN USERS.USERID%TYPE
) RETURN NUMBER
IS
    v_usertier_id USERTIERS.TIERID%TYPE;
    v_discount USERTIERS.DISCOUNTRATE%TYPE;
BEGIN
    -- Get the user tier ID from USERS table
    SELECT USERTIERID INTO v_usertier_id
    FROM USERS
    WHERE USERID = p_user_id;

    -- Get the discount rate from USERTIERS table
    SELECT DISCOUNTRATE INTO v_discount
    FROM USERTIERS
    WHERE TIERID = v_usertier_id;

    RETURN v_discount;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0; -- No discount if user or tier not found
    WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20003, 'Multiple tier entries found.');
END;
