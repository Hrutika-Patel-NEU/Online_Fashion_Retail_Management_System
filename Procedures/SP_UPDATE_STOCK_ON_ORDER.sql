CREATE OR REPLACE PROCEDURE sp_update_stock_on_order (
  p_variationid IN PRODUCTVARIATIONS.VARIATIONID%TYPE,  -- ID of the product variation
  p_quantity    IN NUMBER                                -- Quantity to deduct from stock
) IS
BEGIN
  -- Updating the stock quantity by subtracting the ordered quantity
  -- Updating the timestamp to reflect the change
  UPDATE PRODUCTVARIATIONS
  SET STOCKQUANTITY = STOCKQUANTITY - p_quantity,        -- Deduct quantity from stock
      UPDATEDAT = SYSTIMESTAMP                           -- Record the update time
  WHERE VARIATIONID = p_variationid;                     -- Apply to the correct variation

  -- Success message
  DBMS_OUTPUT.PUT_LINE('Stock updated successfully.');
END;
