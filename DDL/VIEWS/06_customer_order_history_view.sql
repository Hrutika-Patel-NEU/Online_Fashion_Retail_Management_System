-- View 6: Customer Order History View
CREATE OR REPLACE VIEW customer_order_history_view AS
SELECT 
    o.OrderID,
    u.UserID,
    u.FirstName || ' ' || u.LastName AS CustomerName,
    o.PaymentMethod,
    o.PaymentStatus,
    o.Status AS OrderStatus,
    o.CreatedAt AS OrderDate
FROM Orders o
JOIN Users u ON o.UserID = u.UserID;
