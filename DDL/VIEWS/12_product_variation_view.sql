-- View 12: Product Variation View
CREATE OR REPLACE VIEW product_variation_view AS
SELECT 
    v.VariationID,
    p.ProductName,
    c.ColorName,
    s.SizeName,
    v.StockQuantity
FROM ProductVariations v
JOIN Products p ON v.ProductID = p.ProductID
JOIN Colors c ON v.ColorID = c.ColorID
JOIN SizeOptions s ON v.SizeID = s.SizeID;
