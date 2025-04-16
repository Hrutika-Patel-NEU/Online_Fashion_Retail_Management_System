-- View 15: Admin View - All Reviews with Product and Customer Info
CREATE OR REPLACE VIEW admin_all_reviews_view AS
SELECT 
    r.ReviewID,
    p.ProductName,
    r.Rating,
    r.ReviewComment,
    u.FirstName || ' ' || u.LastName AS CustomerName,
    u.Email,
    r.CreatedAt
FROM Reviews r
JOIN Products p ON r.ProductID = p.ProductID
JOIN Users u ON r.UserID = u.UserID;
