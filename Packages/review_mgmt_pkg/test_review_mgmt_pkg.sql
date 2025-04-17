BEGIN
  review_mgmt_pkg.sp_submit_review(
    p_userid        => 3,
    p_productid     => 14,
    p_rating        => 5,
    p_reviewcomment => 'Excellent quality and fast delivery!'
  );
END;
/