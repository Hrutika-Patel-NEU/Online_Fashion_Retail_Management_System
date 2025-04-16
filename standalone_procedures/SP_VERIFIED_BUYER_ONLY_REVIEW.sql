create or replace PROCEDURE sp_verified_buyer_only_review (
  p_userid    IN USERS.USERID%TYPE,
  p_productid IN PRODUCTS.PRODUCTID%TYPE
) IS
  v_dummy NUMBER;
BEGIN
  SELECT 1 INTO v_dummy
  FROM ORDERS O
  JOIN ORDERLINEITEMS OL ON O.ORDERID = OL.ORDERID
  JOIN PRODUCTVARIATIONS PV ON OL.VARIATIONID = PV.VARIATIONID
  WHERE O.USERID = p_userid AND PV.PRODUCTID = p_productid
  AND ROWNUM = 1;

  DBMS_OUTPUT.PUT_LINE('User has purchased the product and is verified.');
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-28006, 'User is not a verified buyer.');
END;
