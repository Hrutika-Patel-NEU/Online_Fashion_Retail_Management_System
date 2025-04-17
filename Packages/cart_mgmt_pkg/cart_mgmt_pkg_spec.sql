CREATE OR REPLACE PACKAGE cart_mgmt_pkg IS
  PROCEDURE sp_add_to_cart (
    p_userid        IN SHOPPINGCART.USERID%TYPE,
    p_variationid   IN SHOPPINGCART.VARIATIONID%TYPE,
    p_quantity      IN SHOPPINGCART.QUANTITY%TYPE
  );

  PROCEDURE sp_remove_from_cart (
    p_userid        IN SHOPPINGCART.USERID%TYPE,
    p_variationid   IN SHOPPINGCART.VARIATIONID%TYPE
  );
END cart_mgmt_pkg;
/
