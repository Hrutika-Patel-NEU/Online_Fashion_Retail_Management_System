create or replace FUNCTION get_cart_total(
    p_user_id IN USERS.USERID%TYPE
) RETURN NUMBER
IS
    v_total NUMBER := 0;
    v_discount NUMBER := 0;
BEGIN
    -- Get user's discount %
    v_discount := get_user_discount(p_user_id);

    -- Calculate discounted cart total
    SELECT SUM(p.PRICE * sc.QUANTITY)
           - SUM(p.PRICE * sc.QUANTITY) * v_discount / 100
    INTO v_total
    FROM SHOPPINGCART sc
    JOIN PRODUCTVARIATIONS pv ON sc.VARIATIONID = pv.VARIATIONID
    JOIN PRODUCTS p ON pv.PRODUCTID = p.PRODUCTID
    WHERE sc.USERID = p_user_id;

    RETURN ROUND(v_total, 2);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20007, 'Error calculating cart total');
END;
/
--Added EXECUTE grants for get_cart_total to admin and user roles only
GRANT EXECUTE ON get_cart_total TO ecom_app_admin;
GRANT EXECUTE ON get_cart_total TO ecom_app_user;
