CREATE OR REPLACE PACKAGE review_mgmt_pkg IS
  PROCEDURE sp_submit_review (
    p_userid        IN REVIEWS.USERID%TYPE,
    p_productid     IN REVIEWS.PRODUCTID%TYPE,
    p_rating        IN REVIEWS.RATING%TYPE,
    p_reviewcomment IN REVIEWS.REVIEWCOMMENT%TYPE
  );
END review_mgmt_pkg;
/

GRANT EXECUTE ON review_mgmt_pkg TO ecom_app_user;
GRANT EXECUTE ON review_mgmt_pkg TO ecom_app_admin;
