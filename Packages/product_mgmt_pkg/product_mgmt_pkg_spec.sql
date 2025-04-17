CREATE OR REPLACE PACKAGE product_mgmt_pkg IS
  -- Procedure to add a new product
  PROCEDURE sp_add_product (
    p_productname      IN PRODUCTS.PRODUCTNAME%TYPE,
    p_categoryid       IN PRODUCTS.CATEGORYID%TYPE,
    p_brandid          IN PRODUCTS.BRANDID%TYPE,
    p_price            IN PRODUCTS.PRICE%TYPE,
    p_description      IN PRODUCTS.DESCRIPTION%TYPE,
    p_sizeguide        IN PRODUCTS.SIZEGUIDE%TYPE,
    p_materialdetails  IN PRODUCTS.MATERIALDETAILS%TYPE,
    p_careinstructions IN PRODUCTS.CAREINSTRUCTIONS%TYPE
  );
  PROCEDURE sp_add_variation (
    p_productid      IN PRODUCTVARIATIONS.PRODUCTID%TYPE,
    p_sizeid         IN PRODUCTVARIATIONS.SIZEID%TYPE,
    p_colorid        IN PRODUCTVARIATIONS.COLORID%TYPE,
    p_stockquantity  IN PRODUCTVARIATIONS.STOCKQUANTITY%TYPE
  );

  PROCEDURE sp_update_product (
    p_productid        IN PRODUCTS.PRODUCTID%TYPE,
    p_price            IN PRODUCTS.PRICE%TYPE,
    p_description      IN PRODUCTS.DESCRIPTION%TYPE,
    p_sizeguide        IN PRODUCTS.SIZEGUIDE%TYPE,
    p_materialdetails  IN PRODUCTS.MATERIALDETAILS%TYPE,
    p_careinstructions IN PRODUCTS.CAREINSTRUCTIONS%TYPE
  );
END product_mgmt_pkg;
/
