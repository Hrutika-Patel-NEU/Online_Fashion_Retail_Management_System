create or replace FUNCTION get_user_order_count(
    p_user_id IN USERS.USERID%TYPE
) RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM ORDERS
    WHERE USERID = p_user_id;

    RETURN v_count;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END;
