CREATE OR REPLACE PACKAGE order_mgmt_pkg IS

  PROCEDURE sp_insert_order_line_items (
    p_orderid        IN ORDERLINEITEMS.ORDERID%TYPE,
    p_variationid    IN ORDERLINEITEMS.VARIATIONID%TYPE,
    p_quantity       IN ORDERLINEITEMS.QUANTITY%TYPE,
    p_userid         IN USERS.USERID%TYPE
  );
END order_mgmt_pkg;
/
