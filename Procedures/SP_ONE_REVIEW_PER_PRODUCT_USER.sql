CREATE OR REPLACE PROCEDURE sp_one_review_per_product_user (
  p_userid    IN USERS.USERID%TYPE,       --  ID of the user
  p_productid IN PRODUCTS.PRODUCTID%TYPE  --  ID of the product
) IS
  v_count NUMBER;                         -- Variable for the count of existing reviews
BEGIN
  -- Checking how many reviews exist by the user for the given product
  SELECT COUNT(*) INTO v_count
  FROM REVIEWS
  WHERE USERID = p_userid 
    AND PRODUCTID = p_productid;

  -- If at least one review exists, raise an error
  IF v_count > 0 THEN
    RAISE_APPLICATION_ERROR(-28007, 'User has already submitted a review for this product.');
  ELSE
    -- If no review exists, allow user to proceed 
    DBMS_OUTPUT.PUT_LINE('No existing review. Allowed to review.');
  END IF;
END;
/

GRANT EXECUTE ON SP_ONE_REVIEW_PER_PRODUCT_USER TO ecom_app_user;
GRANT EXECUTE ON SP_ONE_REVIEW_PER_PRODUCT_USER TO ecom_app_admin;