-- Enable DBMS_OUTPUT
SET SERVEROUTPUT ON;

-- Test sp_customer_order_summary
BEGIN
  report_pkg.sp_customer_order_summary(p_userid => 1);  -- Replace with valid USERID (e.g., from customer_order_summary_view)
END;
/

-- Test sp_product_inventory_report
BEGIN
  report_pkg.sp_product_inventory_report;
END;
/

-- Test sp_top_selling_products
BEGIN
  report_pkg.sp_top_selling_products;
END;
/

-- Test sp_low_stock_alerts
BEGIN
  report_pkg.sp_low_stock_alerts;
END;
/

-- Test sp_admin_all_orders
BEGIN
  report_pkg.sp_admin_all_orders;
END;
/
