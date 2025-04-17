create or replace FUNCTION get_average_rating(
    p_product_id IN PRODUCTS.PRODUCTID%TYPE
) RETURN NUMBER
IS
    v_avg_rating NUMBER;
BEGIN
    SELECT AVG(RATING)
    INTO v_avg_rating
    FROM REVIEWS
    WHERE PRODUCTID = p_product_id;

    RETURN ROUND(v_avg_rating, 2);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RETURN -1; -- flag unexpected issues
END;

--Added EXECUTE grants for get_average_rating to all users (admin, user, report, guest)
GRANT EXECUTE ON get_average_rating TO ecom_app_admin;
GRANT EXECUTE ON get_average_rating TO ecom_app_user;
GRANT EXECUTE ON get_average_rating TO ecom_app_report_user;
GRANT EXECUTE ON get_average_rating TO ecom_app_guest_user;
