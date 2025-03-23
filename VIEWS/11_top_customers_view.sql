-- View 11: Top Customers View
CREATE OR REPLACE VIEW top_customers_view AS
SELECT 
    u.UserID,
    u.FirstName || ' ' || u.LastName AS CustomerName,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(oi.Quantity * oi.SoldPrice) AS TotalSpent
FROM Users u
JOIN Orders o ON u.UserID = o.UserID
JOIN OrderLineItems oi ON o.OrderID = oi.OrderID
GROUP BY u.UserID, u.FirstName, u.LastName
ORDER BY TotalSpent DESC;
