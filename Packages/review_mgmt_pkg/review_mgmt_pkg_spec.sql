CREATE OR REPLACE PACKAGE review_mgmt_pkg IS
  PROCEDURE sp_submit_review (
    p_userid        IN REVIEWS.USERID%TYPE,
    p_productid     IN REVIEWS.PRODUCTID%TYPE,
    p_rating        IN REVIEWS.RATING%TYPE,
    p_reviewcomment IN REVIEWS.REVIEWCOMMENT%TYPE
  );
END review_mgmt_pkg;
/
