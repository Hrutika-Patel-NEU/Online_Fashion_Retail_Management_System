-- View 12: Brand Product Summary View
CREATE OR REPLACE VIEW brand_product_summary_view AS
SELECT 
    b.BrandName,
    COUNT(p.ProductID) AS TotalProducts
FROM Brands b
JOIN Products p ON b.BrandID = p.BrandID
GROUP BY b.BrandName;
