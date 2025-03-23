-- View 3: Product Review Summary View
CREATE OR REPLACE VIEW product_review_summary_view AS
SELECT 
    p.ProductID,
    p.ProductName,
    AVG(r.Rating) AS AverageRating,
    COUNT(r.ReviewID) AS TotalReviews
FROM Products p
LEFT JOIN Reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.ProductName;
