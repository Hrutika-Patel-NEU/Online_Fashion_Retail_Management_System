BEGIN
  product_mgmt_pkg.sp_add_product(
    p_productname      => 'Linen Shir - Slim Fit',
    p_categoryid       => 1,
    p_brandid          => 2,
    p_price            => 1499.99,
    p_description      => 'Premium slim-fit linen shirt for summer wear',
    p_sizeguide        => 'Refer to sizing chart',
    p_materialdetails  => '100% Linen',
    p_careinstructions => 'Machine wash cold, do not bleach'
  );
END;
/
BEGIN
  product_mgmt_pkg.sp_add_variation(
    p_productid     => 1,
    p_sizeid        => 1,
    p_colorid       => 2,
    p_stockquantity => 100
  );
END;
/
BEGIN
  product_mgmt_pkg.sp_update_product(
    p_productid        => 1,
    p_price            => 1199.99,
    p_description      => 'Updated linen shirt description',
    p_sizeguide        => 'Updated size info',
    p_materialdetails  => '100% premium linen',
    p_careinstructions => 'Gentle cycle only'
  );
END;
/
BEGIN
  product_mgmt_pkg.sp_add_product_image(
    p_variationid => 2,
    p_imageurl    => 'https://cdn.shop.com/images/linen-shirt-front.jpg'
  );
END;
/
BEGIN
  product_mgmt_pkg.sp_add_attribute_mapping(
    p_productid => 50,
    p_valueid   => 3
  );
END;
/


