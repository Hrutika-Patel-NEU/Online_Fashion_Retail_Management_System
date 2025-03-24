-- View 1: Customer Order Summary View
CREATE OR REPLACE VIEW customer_order_summary_view AS
SELECT 
    u.UserID,
    u.FirstName || ' ' || u.LastName AS CustomerName,
    COUNT(o.OrderID) AS TotalOrders
FROM Users u
LEFT JOIN Orders o ON u.UserID = o.UserID
GROUP BY u.UserID, u.FirstName, u.LastName;
