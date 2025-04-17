CREATE OR REPLACE PACKAGE cart_mgmt_pkg IS

  PROCEDURE sp_remove_from_cart (
    p_userid        IN SHOPPINGCART.USERID%TYPE,
    p_variationid   IN SHOPPINGCART.VARIATIONID%TYPE
  );
END cart_mgmt_pkg;
/

GRANT EXECUTE ON cart_mgmt_pkg TO ecom_app_user;
GRANT EXECUTE ON cart_mgmt_pkg TO ecom_app_admin;
