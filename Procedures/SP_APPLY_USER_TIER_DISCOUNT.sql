CREATE OR REPLACE FUNCTION sp_apply_user_tier_discount (
  p_userid IN USERS.USERID%TYPE,        -- User ID input parameter
  p_price  IN PRODUCTS.PRICE%TYPE       -- Product price input parameter
) RETURN NUMBER IS
  v_discount USERTIERS.DISCOUNTRATE%TYPE := 0;  -- Variable to hold the user's discount rate
BEGIN
  -- Get the discount rate for the user based on their user tier
  SELECT UT.DISCOUNTRATE INTO v_discount
  FROM USERS U 
  JOIN USERTIERS UT ON U.USERTIERID = UT.TIERID  -- Join to get the tier's discount rate
  WHERE U.USERID = p_userid;                     -- Match the user ID

  -- Return the price after applying the discount
  RETURN p_price - (p_price * v_discount / 100);
END;
/

GRANT EXECUTE ON SP_APPLY_USER_TIER_DISCOUNT TO ecom_app_admin;
