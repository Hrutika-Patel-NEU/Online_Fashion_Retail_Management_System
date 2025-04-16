create or replace FUNCTION sp_apply_user_tier_discount (
  p_userid IN USERS.USERID%TYPE,
  p_price  IN PRODUCTS.PRICE%TYPE
) RETURN NUMBER IS
  v_discount USERTIERS.DISCOUNTRATE%TYPE := 0;
BEGIN
  SELECT UT.DISCOUNTRATE INTO v_discount
  FROM USERS U JOIN USERTIERS UT ON U.USERTIERID = UT.TIERID
  WHERE U.USERID = p_userid;

  RETURN p_price - (p_price * v_discount / 100);
END;
