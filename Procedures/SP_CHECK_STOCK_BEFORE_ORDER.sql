CREATE OR REPLACE PROCEDURE sp_check_stock_before_order (
  p_variationid IN PRODUCTVARIATIONS.VARIATIONID%TYPE,  -- ID of the product variation
  p_quantity    IN NUMBER                                -- Quantity requested in the order
) IS
  v_stock PRODUCTVARIATIONS.STOCKQUANTITY%TYPE;          -- Variable to store current stock quantity
BEGIN
  -- Retrieve the current stock quantity for the given product variation
  SELECT STOCKQUANTITY INTO v_stock
  FROM PRODUCTVARIATIONS
  WHERE VARIATIONID = p_variationid;

  -- Check if the available stock is less than the requested quantity
  IF v_stock < p_quantity THEN
    -- Error if there is not enough stock
    RAISE_APPLICATION_ERROR(-28001, 'Not enough stock.');
  ELSE
    -- Else, confirm stock availability 
    DBMS_OUTPUT.PUT_LINE('Stock is available: ' || v_stock);
  END IF;
END;
/

GRANT EXECUTE ON SP_CHECK_STOCK_BEFORE_ORDER TO ecom_app_admin;