CREATE OR REPLACE PACKAGE BODY order_mgmt_pkg IS

  PROCEDURE sp_insert_order_line_items (
    p_orderid        IN ORDERLINEITEMS.ORDERID%TYPE,
    p_variationid    IN ORDERLINEITEMS.VARIATIONID%TYPE,
    p_quantity       IN ORDERLINEITEMS.QUANTITY%TYPE,
    p_userid         IN USERS.USERID%TYPE
  ) IS
    v_price        PRODUCTS.PRICE%TYPE;
    v_stock        PRODUCTVARIATIONS.STOCKQUANTITY%TYPE;
    v_discount     USERTIERS.DISCOUNTRATE%TYPE;
    v_productid    PRODUCTS.PRODUCTID%TYPE;
    v_soldprice    ORDERLINEITEMS.SOLDPRICE%TYPE;
  BEGIN
    SELECT STOCKQUANTITY, PV.PRODUCTID, P.PRICE
    INTO v_stock, v_productid, v_price
    FROM PRODUCTVARIATIONS PV
    JOIN PRODUCTS P ON PV.PRODUCTID = P.PRODUCTID
    WHERE PV.VARIATIONID = p_variationid;

    IF p_quantity > v_stock THEN
      RAISE_APPLICATION_ERROR(-20101, 'Insufficient stock for variation ' || p_variationid);
    END IF;

    SELECT UT.DISCOUNTRATE INTO v_discount
    FROM USERS U
    JOIN USERTIERS UT ON U.USERTIERID = UT.TIERID
    WHERE U.USERID = p_userid;

    v_soldprice := v_price - (v_price * v_discount / 100);

    INSERT INTO ORDERLINEITEMS (
      ORDERLINEID, ORDERID, VARIATIONID, SOLDPRICE, QUANTITY, CREATEDAT, UPDATEDAT
    ) VALUES (
      ORDERLINE_SEQ.NEXTVAL, p_orderid, p_variationid, v_soldprice, p_quantity, SYSTIMESTAMP, SYSTIMESTAMP
    );

    UPDATE PRODUCTVARIATIONS
    SET STOCKQUANTITY = STOCKQUANTITY - p_quantity,
        UPDATEDAT = SYSTIMESTAMP
    WHERE VARIATIONID = p_variationid;

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20102, 'Variation or user not found.');
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20103, 'Unexpected error: ' || SQLERRM);
  END sp_insert_order_line_items;

END order_mgmt_pkg;
/