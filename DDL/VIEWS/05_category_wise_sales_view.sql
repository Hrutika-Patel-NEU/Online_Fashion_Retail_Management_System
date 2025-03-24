-- View 5: Category-wise Sales Summary View
CREATE OR REPLACE VIEW category_wise_sales_view AS
SELECT 
    cat.CategoryName,
    SUM(oi.Quantity) AS TotalQuantitySold,
    SUM(oi.SoldPrice * oi.Quantity) AS TotalRevenue
FROM OrderLineItems oi
JOIN ProductVariations v ON oi.VariationID = v.VariationID
JOIN Products p ON v.ProductID = p.ProductID
JOIN ProductCategories cat ON p.CategoryID = cat.CategoryID
GROUP BY cat.CategoryName;
