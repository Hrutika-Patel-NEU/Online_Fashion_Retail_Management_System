CREATE OR REPLACE PACKAGE BODY product_mgmt_pkg IS

  PROCEDURE sp_add_product (
  p_productname      IN PRODUCTS.PRODUCTNAME%TYPE,
  p_categoryid       IN PRODUCTS.CATEGORYID%TYPE,
  p_brandid          IN PRODUCTS.BRANDID%TYPE,
  p_price            IN PRODUCTS.PRICE%TYPE,
  p_description      IN PRODUCTS.DESCRIPTION%TYPE,
  p_sizeguide        IN PRODUCTS.SIZEGUIDE%TYPE,
  p_materialdetails  IN PRODUCTS.MATERIALDETAILS%TYPE,
  p_careinstructions IN PRODUCTS.CAREINSTRUCTIONS%TYPE
) IS
  v_dummy NUMBER;
  v_dup_product EXCEPTION;
  PRAGMA EXCEPTION_INIT(v_dup_product, -1); -- ORA-00001 for duplicate
BEGIN
  -- Check category
  SELECT 1 INTO v_dummy FROM PRODUCTCATEGORIES WHERE CATEGORYID = p_categoryid;

  -- Check brand
  SELECT 1 INTO v_dummy FROM BRANDS WHERE BRANDID = p_brandid;

  -- Insert product with generated PRODUCTID
  INSERT INTO PRODUCTS (
    PRODUCTID, PRODUCTNAME, CATEGORYID, BRANDID, PRICE,
    DESCRIPTION, SIZEGUIDE, MATERIALDETAILS, CAREINSTRUCTIONS,
    ISAVAILABLE, ISARCHIVED, CREATEDAT, UPDATEDAT
  ) VALUES (
    PRODUCT_SEQ.NEXTVAL, p_productname, p_categoryid, p_brandid, p_price,
    p_description, p_sizeguide, p_materialdetails, p_careinstructions,
    'Y', 'N', SYSTIMESTAMP, SYSTIMESTAMP
  );

  DBMS_OUTPUT.PUT_LINE('Product added successfully.');

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001, 'Category or Brand does not exist.');
  WHEN v_dup_product THEN
    RAISE_APPLICATION_ERROR(-20002, 'Product with same name already exists for this brand.');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20003, 'Unexpected error: ' || SQLERRM);
END sp_add_product;

  PROCEDURE sp_add_variation (
  p_productid      IN PRODUCTVARIATIONS.PRODUCTID%TYPE,
  p_sizeid         IN PRODUCTVARIATIONS.SIZEID%TYPE,
  p_colorid        IN PRODUCTVARIATIONS.COLORID%TYPE,
  p_stockquantity  IN PRODUCTVARIATIONS.STOCKQUANTITY%TYPE
) IS
  v_dummy NUMBER;
BEGIN
  -- Check references
  SELECT 1 INTO v_dummy FROM PRODUCTS WHERE PRODUCTID = p_productid;
  SELECT 1 INTO v_dummy FROM SIZEOPTIONS WHERE SIZEID = p_sizeid;
  SELECT 1 INTO v_dummy FROM COLORS WHERE COLORID = p_colorid;

  -- Insert variation with generated VARIATIONID
  INSERT INTO PRODUCTVARIATIONS (
    VARIATIONID, PRODUCTID, SIZEID, COLORID, STOCKQUANTITY, CREATEDAT, UPDATEDAT
  ) VALUES (
    VARIATION_SEQ.NEXTVAL, p_productid, p_sizeid, p_colorid, p_stockquantity, SYSTIMESTAMP, SYSTIMESTAMP
  );

  DBMS_OUTPUT.PUT_LINE('Product variation added successfully.');
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20011, 'Invalid ProductID, SizeID or ColorID.');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20012, 'Unexpected error: ' || SQLERRM);
END sp_add_variation;


  PROCEDURE sp_update_product (
    p_productid        IN PRODUCTS.PRODUCTID%TYPE,
    p_price            IN PRODUCTS.PRICE%TYPE,
    p_description      IN PRODUCTS.DESCRIPTION%TYPE,
    p_sizeguide        IN PRODUCTS.SIZEGUIDE%TYPE,
    p_materialdetails  IN PRODUCTS.MATERIALDETAILS%TYPE,
    p_careinstructions IN PRODUCTS.CAREINSTRUCTIONS%TYPE
  ) IS
    v_dummy NUMBER;
  BEGIN
    SELECT 1 INTO v_dummy FROM PRODUCTS WHERE PRODUCTID = p_productid;

    UPDATE PRODUCTS
    SET
      PRICE = p_price,
      DESCRIPTION = p_description,
      SIZEGUIDE = p_sizeguide,
      MATERIALDETAILS = p_materialdetails,
      CAREINSTRUCTIONS = p_careinstructions,
      UPDATEDAT = SYSTIMESTAMP
    WHERE PRODUCTID = p_productid;

    DBMS_OUTPUT.PUT_LINE('Product updated successfully.');
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20021, 'Product does not exist.');
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20022, 'Unexpected error: ' || SQLERRM);
  END sp_update_product;
  
  PROCEDURE sp_add_product_image (
    p_variationid      IN PRODUCTIMAGES.VARIATIONID%TYPE,
    p_imageurl         IN PRODUCTIMAGES.PRODUCTIMAGEURL%TYPE
  ) IS
    v_dummy NUMBER;
  BEGIN
    -- Validate variation exists
    SELECT 1 INTO v_dummy FROM PRODUCTVARIATIONS WHERE VARIATIONID = p_variationid;

    INSERT INTO PRODUCTIMAGES (
      PRODUCTIMAGEID,VARIATIONID, PRODUCTIMAGEURL, CREATEDAT, UPDATEDAT
    ) VALUES (
      PRODUCTIMAGE_SEQ.NEXTVAL, p_variationid, p_imageurl, SYSTIMESTAMP, SYSTIMESTAMP
    );

    DBMS_OUTPUT.PUT_LINE('Image added successfully.');

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20041, 'Variation does not exist.');
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20042, 'Unexpected error: ' || SQLERRM);
  END sp_add_product_image;
  
  PROCEDURE sp_add_attribute_mapping (
    p_productid        IN PRODUCTATTRIBUTEMAPPING.PRODUCTID%TYPE,
    p_valueid          IN PRODUCTATTRIBUTEMAPPING.VALUEID%TYPE
  ) IS
    v_dummy NUMBER;
  BEGIN
    -- Validate existence of product and attribute value
    SELECT 1 INTO v_dummy FROM PRODUCTS WHERE PRODUCTID = p_productid;
    SELECT 1 INTO v_dummy FROM PRODUCTATTRIBUTEVALUES WHERE VALUEID = p_valueid;

    INSERT INTO PRODUCTATTRIBUTEMAPPING (
      PRODUCTID, VALUEID, CREATEDAT, UPDATEDAT
    ) VALUES (
      p_productid, p_valueid, SYSTIMESTAMP, SYSTIMESTAMP
    );

    DBMS_OUTPUT.PUT_LINE('Attribute mapping created successfully.');

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20051, 'Invalid Product or Attribute Value.');
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20052, 'Unexpected error: ' || SQLERRM);
  END sp_add_attribute_mapping;


END product_mgmt_pkg;
/
