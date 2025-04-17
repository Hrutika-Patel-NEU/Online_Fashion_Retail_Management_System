CREATE OR REPLACE PACKAGE report_pkg IS
  PROCEDURE sp_customer_order_summary(p_userid IN USERS.USERID%TYPE);
  PROCEDURE sp_product_inventory_report;
  PROCEDURE sp_top_selling_products;
  PROCEDURE sp_low_stock_alerts;
  PROCEDURE sp_admin_all_orders;
END report_pkg;
/

GRANT EXECUTE ON report_pkg TO ecom_app_report_user;
GRANT EXECUTE ON report_pkg TO ecom_app_admin;
