CREATE OR REPLACE PACKAGE BODY cart_mgmt_pkg IS
  PROCEDURE sp_remove_from_cart (
    p_userid        IN SHOPPINGCART.USERID%TYPE,
    p_variationid   IN SHOPPINGCART.VARIATIONID%TYPE
  ) IS
    v_dummy NUMBER;
  BEGIN
    -- Check if entry exists
    SELECT 1 INTO v_dummy
    FROM SHOPPINGCART
    WHERE USERID = p_userid AND VARIATIONID = p_variationid;

    DELETE FROM SHOPPINGCART
    WHERE USERID = p_userid AND VARIATIONID = p_variationid;

    DBMS_OUTPUT.PUT_LINE('Item removed from cart successfully.');

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20006, 'Cart entry does not exist.');
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20007, 'Unexpected error in sp_remove_from_cart: ' || SQLERRM);
  END sp_remove_from_cart;

END cart_mgmt_pkg;
/
