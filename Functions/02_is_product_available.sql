create or replace FUNCTION is_product_available(
    p_product_id IN PRODUCTS.PRODUCTID%TYPE,
    p_color_name IN COLORS.COLORNAME%TYPE,
    p_size_name IN SIZEOPTIONS.SIZENAME%TYPE
) RETURN VARCHAR2
IS
    v_color_id COLORS.COLORID%TYPE;
    v_size_id SIZEOPTIONS.SIZEID%TYPE;
    v_variation_id PRODUCTVARIATIONS.VARIATIONID%TYPE;
    v_stock PRODUCTVARIATIONS.STOCKQUANTITY%TYPE;
    v_is_available PRODUCTS.ISAVAILABLE%TYPE;
    v_is_archived PRODUCTS.ISARCHIVED%TYPE;
BEGIN
    -- Get color ID
    SELECT COLORID INTO v_color_id
    FROM COLORS
    WHERE UPPER(COLORNAME) = UPPER(p_color_name);

    -- Get size ID
    SELECT SIZEID INTO v_size_id
    FROM SIZEOPTIONS
    WHERE UPPER(SIZENAME) = UPPER(p_size_name);

    -- Get variation ID and stock
    SELECT VARIATIONID, STOCKQUANTITY
    INTO v_variation_id, v_stock
    FROM PRODUCTVARIATIONS
    WHERE PRODUCTID = p_product_id
      AND COLORID = v_color_id
      AND SIZEID = v_size_id;

    -- Get product availability
    SELECT ISAVAILABLE, ISARCHIVED
    INTO v_is_available, v_is_archived
    FROM PRODUCTS
    WHERE PRODUCTID = p_product_id;

    -- Check all conditions
    IF v_stock > 0 AND v_is_available = 'Y' AND v_is_archived = 'N' THEN
        RETURN 'TRUE';
    ELSE
        RETURN 'FALSE';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'FALSE';
    WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Multiple records found unexpectedly.');
END;
/
GRANT EXECUTE ON is_product_available TO ecom_app_admin;
GRANT EXECUTE ON is_product_available TO ecom_app_user;
GRANT EXECUTE ON is_product_available TO ecom_app_report_user;
GRANT EXECUTE ON is_product_available TO ecom_app_guest_user;
