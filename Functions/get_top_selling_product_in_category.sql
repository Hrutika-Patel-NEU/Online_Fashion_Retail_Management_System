create or replace FUNCTION get_top_selling_product_in_category(
    p_category_id IN PRODUCTCATEGORIES.CATEGORYID%TYPE
) RETURN PRODUCTS.PRODUCTID%TYPE
IS
    v_top_product_id PRODUCTS.PRODUCTID%TYPE;
BEGIN
    SELECT product_id
    INTO v_top_product_id
    FROM (
        SELECT p.PRODUCTID AS product_id,
               SUM(oi.QUANTITY) AS total_sold
        FROM ORDERLINEITEMS oi
        JOIN PRODUCTVARIATIONS pv ON oi.VARIATIONID = pv.VARIATIONID
        JOIN PRODUCTS p ON pv.PRODUCTID = p.PRODUCTID
        WHERE p.CATEGORYID = p_category_id
        GROUP BY p.PRODUCTID
        ORDER BY total_sold DESC
    )
    WHERE ROWNUM = 1;

    RETURN v_top_product_id;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
    WHEN OTHERS THEN
        RETURN NULL;
END;
