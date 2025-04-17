create or replace PROCEDURE sp_verified_buyer_only_review (
  p_userid    IN USERS.USERID%TYPE,       --  ID of the user
  p_productid IN PRODUCTS.PRODUCTID%TYPE  --  ID of the product
) IS
  v_dummy NUMBER;  -- Dummy variable to check for verification
BEGIN
  -- Check if the user has purchased the given product
  SELECT 1 INTO v_dummy
  FROM ORDERS O
  JOIN ORDERLINEITEMS OL ON O.ORDERID = OL.ORDERID             -- Join orders with items
  JOIN PRODUCTVARIATIONS PV ON OL.VARIATIONID = PV.VARIATIONID -- Join to get product
  WHERE O.USERID = p_userid                                     -- Match user
    AND PV.PRODUCTID = p_productid                              -- Match product
    AND ROWNUM = 1;                                             

  -- User is verified as a buyer
  DBMS_OUTPUT.PUT_LINE('User has purchased the product and is verified.');
EXCEPTION
  -- If no match found, user is not a verified buyer
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-28006, 'User is not a verified buyer.');
END;
/

GRANT EXECUTE ON SP_VERIFIED_BUYER_ONLY_REVIEW TO ecom_app_user;
GRANT EXECUTE ON SP_VERIFIED_BUYER_ONLY_REVIEW TO ecom_app_admin;