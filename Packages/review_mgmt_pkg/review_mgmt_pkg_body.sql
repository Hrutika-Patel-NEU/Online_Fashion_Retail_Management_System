CREATE OR REPLACE PACKAGE BODY review_mgmt_pkg IS

  PROCEDURE sp_submit_review (
    p_userid        IN REVIEWS.USERID%TYPE,
    p_productid     IN REVIEWS.PRODUCTID%TYPE,
    p_rating        IN REVIEWS.RATING%TYPE,
    p_reviewcomment IN REVIEWS.REVIEWCOMMENT%TYPE
  ) IS
    v_dummy NUMBER;
  BEGIN
    -- Check rating range
    IF p_rating < 1 OR p_rating > 5 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Rating must be between 1 and 5.');
    END IF;

    -- Check if user has purchased the product
    SELECT 1 INTO v_dummy
    FROM ORDERS O
    JOIN ORDERLINEITEMS OL ON O.ORDERID = OL.ORDERID
    JOIN PRODUCTVARIATIONS PV ON OL.VARIATIONID = PV.VARIATIONID
    WHERE O.USERID = p_userid AND PV.PRODUCTID = p_productid
    AND ROWNUM = 1;

    -- Check if review already exists
    BEGIN
      SELECT 1 INTO v_dummy
      FROM REVIEWS
      WHERE USERID = p_userid AND PRODUCTID = p_productid;

      -- If found, raise error
      RAISE_APPLICATION_ERROR(-20002, 'You have already reviewed this product.');
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        NULL; -- Okay to proceed
    END;

    -- Insert review
    INSERT INTO REVIEWS (
      REVIEWID, USERID, PRODUCTID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
    ) VALUES (
      REVIEW_SEQ.NEXTVAL, p_userid, p_productid, p_rating, p_reviewcomment, SYSTIMESTAMP, SYSTIMESTAMP
    );

    DBMS_OUTPUT.PUT_LINE('Review submitted successfully.');

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20003, 'You must purchase the product before reviewing.');
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20099, 'Unexpected error in sp_submit_review: ' || SQLERRM);
  END sp_submit_review;

END review_mgmt_pkg;
/
