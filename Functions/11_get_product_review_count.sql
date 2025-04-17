create or replace FUNCTION get_product_review_count(
    p_product_id IN PRODUCTS.PRODUCTID%TYPE
) RETURN NUMBER
IS
    v_review_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_review_count
    FROM REVIEWS
    WHERE PRODUCTID = p_product_id;

    RETURN v_review_count;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END;

--Added EXECUTE grants for get_product_review_count to all users (admin, user, report, guest)
GRANT EXECUTE ON get_product_review_count TO ecom_app_admin;
GRANT EXECUTE ON get_product_review_count TO ecom_app_user;
GRANT EXECUTE ON get_product_review_count TO ecom_app_report_user;
GRANT EXECUTE ON get_product_review_count TO ecom_app_guest_user;
