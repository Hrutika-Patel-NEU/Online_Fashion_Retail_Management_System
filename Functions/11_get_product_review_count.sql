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
