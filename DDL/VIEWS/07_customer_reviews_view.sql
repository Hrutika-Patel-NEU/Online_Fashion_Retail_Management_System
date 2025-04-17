-- View 7: Customer Reviews View
CREATE OR REPLACE VIEW customer_reviews_view AS
SELECT 
    r.ReviewID,
    u.FirstName || ' ' || u.LastName AS CustomerName,
    p.ProductName,
    r.Rating,
    r.ReviewComment,
    r.CreatedAt
FROM Reviews r
JOIN Users u ON r.UserID = u.UserID
JOIN Products p ON r.ProductID = p.ProductID;
