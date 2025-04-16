create or replace PROCEDURE sp_one_review_per_product_user (
  p_userid    IN USERS.USERID%TYPE,
  p_productid IN PRODUCTS.PRODUCTID%TYPE
) IS
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count
  FROM REVIEWS
  WHERE USERID = p_userid AND PRODUCTID = p_productid;

  IF v_count > 0 THEN
    RAISE_APPLICATION_ERROR(-28007, 'User has already submitted a review for this product.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('No existing review. Allowed to review.');
  END IF;
END;
