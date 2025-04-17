BEGIN
  cart_mgmt_pkg.sp_remove_from_cart(
    p_userid      => 2,
    p_variationid => 53
  );
END;
/