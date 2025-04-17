-- View 09: Top Selling Products View
CREATE OR REPLACE VIEW top_selling_products_view AS
SELECT 
    p.ProductID,
    p.ProductName,
    SUM(oi.Quantity) AS TotalSold,
    SUM(oi.SoldPrice * oi.Quantity) AS TotalRevenue
FROM OrderLineItems oi
JOIN ProductVariations v ON oi.VariationID = v.VariationID
JOIN Products p ON v.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY TotalSold DESC;

