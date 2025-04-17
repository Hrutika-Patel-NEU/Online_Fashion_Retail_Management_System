CREATE OR REPLACE PACKAGE BODY report_pkg IS

  PROCEDURE sp_customer_order_summary(p_userid IN USERS.USERID%TYPE) IS
  BEGIN
    FOR rec IN (
      SELECT * FROM customer_order_summary_view WHERE USERID = p_userid
    ) LOOP
      DBMS_OUTPUT.PUT_LINE('Customer: ' || rec.CUSTOMERNAME || ', Total Orders: ' || rec.TOTALORDERS);
    END LOOP;
  EXCEPTION
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20001, 'Error fetching customer order summary: ' || SQLERRM);
  END;

  PROCEDURE sp_product_inventory_report IS
  BEGIN
    FOR rec IN (SELECT * FROM product_inventory_view) LOOP
      DBMS_OUTPUT.PUT_LINE('Product: ' || rec.PRODUCTNAME || ', Brand: ' || rec.BRANDNAME ||
                           ', Category: ' || rec.CATEGORYNAME || ', Stock: ' || rec.TOTALSTOCK);
    END LOOP;
  EXCEPTION
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20002, 'Error in inventory report: ' || SQLERRM);
  END;

  PROCEDURE sp_top_selling_products IS
  BEGIN
    FOR rec IN (SELECT * FROM top_selling_products_view) LOOP
      DBMS_OUTPUT.PUT_LINE('Product: ' || rec.PRODUCTNAME || ', Total Sold: ' || rec.TOTALSOLD ||
                           ', Revenue: $' || rec.TOTALREVENUE);
    END LOOP;
  EXCEPTION
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20003, 'Error in top selling products: ' || SQLERRM);
  END;

  PROCEDURE sp_low_stock_alerts IS
  BEGIN
    FOR rec IN (SELECT * FROM low_stock_alert_view) LOOP
      DBMS_OUTPUT.PUT_LINE('Product: ' || rec.PRODUCTNAME || ', Color: ' || rec.COLORNAME ||
                           ', Size: ' || rec.SIZENAME || ', Remaining: ' || rec.STOCKQUANTITY);
    END LOOP;
  EXCEPTION
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20004, 'Error in low stock alert report: ' || SQLERRM);
  END;

  PROCEDURE sp_admin_all_orders IS
  BEGIN
    FOR rec IN (SELECT * FROM admin_all_orders_view) LOOP
      DBMS_OUTPUT.PUT_LINE('OrderID: ' || rec.ORDERID || ', Customer: ' || rec.CUSTOMERNAME ||
                           ', Email: ' || rec.EMAIL || ', Status: ' || rec.STATUS ||
                           ', Payment: ' || rec.PAYMENTMETHOD || ' - ' || rec.PAYMENTSTATUS);
    END LOOP;
  EXCEPTION
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20005, 'Error in admin order report: ' || SQLERRM);
  END;

END report_pkg;
/
