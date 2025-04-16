create or replace PROCEDURE sp_check_stock_before_order (
  p_variationid IN PRODUCTVARIATIONS.VARIATIONID%TYPE,
  p_quantity    IN NUMBER
) IS
  v_stock PRODUCTVARIATIONS.STOCKQUANTITY%TYPE;
BEGIN
  SELECT STOCKQUANTITY INTO v_stock
  FROM PRODUCTVARIATIONS
  WHERE VARIATIONID = p_variationid;

  IF v_stock < p_quantity THEN
    RAISE_APPLICATION_ERROR(-28001, 'Not enough stock.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Stock is available: ' || v_stock);
  END IF;
END;
