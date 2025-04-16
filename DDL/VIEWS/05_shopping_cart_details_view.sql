-- View 5: Shopping Cart Details View
CREATE OR REPLACE VIEW shopping_cart_details_view AS
SELECT 
    sc.UserID,
    u.FirstName || ' ' || u.LastName AS CustomerName,
    p.ProductName,
    c.ColorName,
    s.SizeName,
    sc.Quantity
FROM ShoppingCart sc
JOIN Users u ON sc.UserID = u.UserID
JOIN ProductVariations v ON sc.VariationID = v.VariationID
JOIN Products p ON v.ProductID = p.ProductID
JOIN Colors c ON v.ColorID = c.ColorID
JOIN SizeOptions s ON v.SizeID = s.SizeID;
