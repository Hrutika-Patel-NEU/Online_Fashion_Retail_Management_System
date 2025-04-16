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
