BEGIN
  order_mgmt_pkg.sp_insert_order_line_items(
    p_orderid     => 1,
    p_variationid => 1,        
    p_quantity    => 2, 
    p_userid      => 1      
  );
END;
/
