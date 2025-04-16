create or replace PROCEDURE sp_update_stock_on_order (
  p_variationid IN PRODUCTVARIATIONS.VARIATIONID%TYPE,
  p_quantity    IN NUMBER
) IS
BEGIN
  UPDATE PRODUCTVARIATIONS
  SET STOCKQUANTITY = STOCKQUANTITY - p_quantity,
      UPDATEDAT = SYSTIMESTAMP
  WHERE VARIATIONID = p_variationid;

  DBMS_OUTPUT.PUT_LINE('Stock updated successfully.');
END;
