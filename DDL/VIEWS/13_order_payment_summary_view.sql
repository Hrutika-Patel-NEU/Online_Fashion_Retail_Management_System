-- View 13: Order Payment Summary View
CREATE OR REPLACE VIEW order_payment_summary_view AS
SELECT 
    o.OrderID,
    u.Email,
    o.PaymentMethod,
    o.PaymentStatus,
    SUM(oi.Quantity * oi.SoldPrice) AS OrderTotal
FROM Orders o
JOIN Users u ON o.UserID = u.UserID
JOIN OrderLineItems oi ON o.OrderID = oi.OrderID
GROUP BY o.OrderID, u.Email, o.PaymentMethod, o.PaymentStatus;
