-- View 2: Product Inventory View
CREATE OR REPLACE VIEW product_inventory_view AS
SELECT 
    p.ProductID,
    p.ProductName,
    b.BrandName,
    c.CategoryName,
    SUM(v.StockQuantity) AS TotalStock
FROM Products p
JOIN ProductVariations v ON p.ProductID = v.ProductID
JOIN Brands b ON p.BrandID = b.BrandID
JOIN ProductCategories c ON p.CategoryID = c.CategoryID
GROUP BY p.ProductID, p.ProductName, b.BrandName, c.CategoryName;
