create or replace FUNCTION get_current_price(
    p_product_id IN PRODUCTS.PRODUCTID%TYPE,
    p_color_name IN COLORS.COLORNAME%TYPE,
    p_size_name IN SIZEOPTIONS.SIZENAME%TYPE
) RETURN NUMBER
IS
    v_color_id COLORS.COLORID%TYPE;
    v_size_id SIZEOPTIONS.SIZEID%TYPE;
    v_variation_id PRODUCTVARIATIONS.VARIATIONID%TYPE;
    v_price PRODUCTS.PRICE%TYPE;
BEGIN
    -- Get COLORID from COLORS table
    SELECT COLORID INTO v_color_id
    FROM COLORS
    WHERE UPPER(COLORNAME) = UPPER(p_color_name);

    -- Get SIZEID from SIZEOPTIONS table
    SELECT SIZEID INTO v_size_id
    FROM SIZEOPTIONS
    WHERE UPPER(SIZENAME) = UPPER(p_size_name);

    -- Verify that this variation exists
    SELECT VARIATIONID INTO v_variation_id
    FROM PRODUCTVARIATIONS
    WHERE PRODUCTID = p_product_id
      AND COLORID = v_color_id
      AND SIZEID = v_size_id;

    -- Get the price from PRODUCTS table
    SELECT PRICE INTO v_price
    FROM PRODUCTS
    WHERE PRODUCTID = p_product_id;

    RETURN v_price;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'No matching variation or data found.');
    WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Multiple rows found for unique lookup.');
END;
