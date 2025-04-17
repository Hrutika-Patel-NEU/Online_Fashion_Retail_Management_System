BEGIN
  sp_collapse_duplicate_cart_items;
END;
/


BEGIN
  sp_collapse_duplicate_cart_items;
END;
/


BEGIN
  sp_check_stock_before_order(
    p_variationid => 1,
    p_quantity    => 5
  );
END;
/


BEGIN
  sp_update_stock_on_order(p_variationid => 501, p_quantity => 2);
END;
/


BEGIN
  sp_require_image_before_publish(p_variationid => 501);
END;
/


BEGIN
  sp_verified_buyer_only_review(p_userid => 101, p_productid => 301);
END;
/


BEGIN
  sp_one_review_per_product_user(p_userid => 101, p_productid => 301);
END;
/