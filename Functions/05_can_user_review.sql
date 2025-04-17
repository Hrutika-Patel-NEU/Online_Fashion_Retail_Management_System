create or replace FUNCTION can_user_review(
    p_user_id IN USERS.USERID%TYPE,
    p_product_id IN PRODUCTS.PRODUCTID%TYPE
) RETURN VARCHAR2
IS
    v_exists NUMBER := 0;
BEGIN
    SELECT COUNT(*)
    INTO v_exists
    FROM ORDERS o
    JOIN ORDERLINEITEMS oi ON o.ORDERID = oi.ORDERID
    JOIN PRODUCTVARIATIONS pv ON oi.VARIATIONID = pv.VARIATIONID
    WHERE o.USERID = p_user_id
      AND pv.PRODUCTID = p_product_id;

    IF v_exists > 0 THEN
        RETURN 'TRUE';
    ELSE
        RETURN 'FALSE';
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 'FALSE'; -- default to safe failure
END;
/
--Added EXECUTE grants for can_user_review to admin and user roles only
GRANT EXECUTE ON can_user_review TO ecom_app_admin;
GRANT EXECUTE ON can_user_review TO ecom_app_user;
