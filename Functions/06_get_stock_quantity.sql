create or replace FUNCTION get_stock_quantity(
    p_product_id IN PRODUCTS.PRODUCTID%TYPE,
    p_color_name IN COLORS.COLORNAME%TYPE,
    p_size_name IN SIZEOPTIONS.SIZENAME%TYPE
) RETURN NUMBER
IS
    v_color_id COLORS.COLORID%TYPE;
    v_size_id SIZEOPTIONS.SIZEID%TYPE;
    v_stock PRODUCTVARIATIONS.STOCKQUANTITY%TYPE;
BEGIN
    -- Get COLORID
    SELECT COLORID INTO v_color_id
    FROM COLORS
    WHERE UPPER(COLORNAME) = UPPER(p_color_name);

    -- Get SIZEID
    SELECT SIZEID INTO v_size_id
    FROM SIZEOPTIONS
    WHERE UPPER(SIZENAME) = UPPER(p_size_name);

    -- Get stock quantity for the variation
    SELECT STOCKQUANTITY INTO v_stock
    FROM PRODUCTVARIATIONS
    WHERE PRODUCTID = p_product_id
      AND COLORID = v_color_id
      AND SIZEID = v_size_id;

    RETURN v_stock;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0; -- Default to 0 if variation doesn't exist
    WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20005, 'Duplicate product variation found.');
END;

--Added EXECUTE grants for get_stock_quantity to admin, user, and report roles
GRANT EXECUTE ON get_stock_quantity TO ecom_app_admin;
GRANT EXECUTE ON get_stock_quantity TO ecom_app_user;
GRANT EXECUTE ON get_stock_quantity TO ecom_app_report_user;
