-- View 14: Admin View - All Orders with Customer Info
CREATE OR REPLACE VIEW admin_all_orders_view AS
SELECT 
    o.OrderID,
    u.FirstName || ' ' || u.LastName AS CustomerName,
    u.Email,
    o.Status,
    o.PaymentMethod,
    o.PaymentStatus,
    o.CreatedAt AS OrderDate
FROM Orders o
JOIN Users u ON o.UserID = u.UserID;
