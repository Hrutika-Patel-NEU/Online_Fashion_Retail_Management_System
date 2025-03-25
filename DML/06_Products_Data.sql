BEGIN
   -- Delete all product records
   DELETE FROM Products;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('Products table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during Products table cleanup: ' || SQLERRM);
END;
/


-- Tops Category (ID 1) - Brands: UrbanTrendz, GlamourShine, CasualCorner, VintageVibes, SportiFlex
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(1, 1, 1, 'Urban Graphic Tee', 'Stylish and casual graphic tees for everyday wear.', 25.99, 'Fits true to size.', '100% cotton', 'Machine wash cold.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(2, 1, 5, 'Casual Pullover', 'A comfortable, lightweight pullover, perfect for casual outings.', 40.99, 'Loose fit.', 'Polyester blend', 'Machine wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(3, 1, 9, 'Vintage Denim Jacket', 'Retro style denim jacket for a throwback look.', 59.99, 'Regular fit.', 'Denim', 'Machine wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(4, 1, 6, 'Classic Polo Shirt', 'Timeless polo shirt for a smart casual appearance.', 35.99, 'Fits true to size.', '100% cotton', 'Machine wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(5, 1, 10, 'Tech Hoodie', 'A modern hoodie equipped with built-in headphones and a music player pocket.', 75.99, 'Regular fit.', 'Fleece', 'Machine wash cold, electronics removable.', 'Y');

-- Bottoms Category (ID 2) - Brands: UrbanTrendz, ClassicElegance, VintageVibes, GlamourShine, SportiFlex
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(11, 2, 1, 'Urban Joggers', 'Comfortable and stylish joggers perfect for both a workout or casual wear.', 39.99, 'Available in various sizes.', 'Cotton blend', 'Machine wash cold.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(12, 2, 2, 'Classic Chinos', 'Perfectly tailored chinos for a sharp look.', 49.99, 'Fits true to size.', '100% cotton', 'Machine washable.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(13, 2, 3, 'Vintage Denim Jeans', 'High-waisted jeans with a classic vintage feel.', 59.99, 'Refer to vintage sizing guide.', 'Denim', 'Machine wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(14, 2, 4, 'Glitzy Sequin Skirt', 'A dazzling skirt for evening outings and parties.', 69.99, 'Check our size chart for the perfect fit.', 'Sequins with a polyester lining', 'Dry clean only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(15, 2, 5, 'Sporty Track Pants', 'Durable and breathable track pants suitable for various sports activities.', 35.99, 'Standard athletic sizing.', 'Polyester', 'Machine wash.', 'Y');


-- Dresses Category (ID 3) - Brands: GlamourShine, CasualCorner, VintageVibes, UrbanTrendz, ClassicElegance
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(6, 3, 5, 'Elegant Evening Gown', 'An elegant gown perfect for high-end events and parties.', 120.99, 'Refer to size guide.', 'Silk', 'Dry clean only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(7, 3, 9, 'Boho Summer Dress', 'Lightweight and colorful, ideal for summer festivals.', 45.99, 'Fits loosely.', 'Cotton blend', 'Machine wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(8, 3, 6, 'Vintage Velvet Dress', 'A touch of the 70s with this soft velvet dress.', 65.99, 'Close fit.', 'Velvet', 'Dry clean.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(9, 3, 1, 'Street Chic Dress', 'Urban style with comfort, suitable for city life.', 50.99, 'Regular fit.', 'Jersey', 'Machine wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(10, 3, 2, 'Business Casual Dress', 'Perfect blend of professionalism and style for the office.', 70.99, 'Tailored fit.', 'Blend', 'Machine washable.', 'Y');

-- Outerwear Category (ID 4) - Brands: NatureWalk, ExecuWear, TechGear, GlamourShine, SportiFlex
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(16, 4, 4, 'All-Weather Explorer Jacket', 'Water-resistant and breathable jacket for all outdoor adventures.', 119.99, 'See size guide for fitting.', 'Gore-Tex', 'Machine wash cold, hang to dry.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(17, 4, 8, 'Executive Wool Coat', 'Luxury wool coat for a sharp professional look.', 199.99, 'Tailored fit.', '100% wool', 'Dry clean only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(18, 4, 10, 'Heated Tech Jacket', 'High-tech jacket with built-in heating elements, controlled via an app.', 249.99, 'Standard fit.', 'Polyester with electronic components', 'Dry clean only, remove electronics before cleaning.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(19, 4, 5, 'Evening Shawl', 'Elegant shawl with silver threads perfect for formal events.', 99.99, 'One size fits all.', 'Silk blend with silver threads', 'Hand wash only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(20, 4, 3, 'Retro Denim Jacket', 'Classic denim jacket with a modern twist for casual wear.', 89.99, 'Fits true to size.', 'Denim', 'Machine wash.', 'Y');

-- Footwear Category (ID 5) - Brands: UrbanTrendz, ClassicElegance, VintageVibes, GlamourShine, SportiFlex
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(21, 5, 1, 'Urban Sneakers', 'Stylish and comfortable sneakers for everyday urban wear.', 65.99, 'Refer to our sizing chart.', 'Synthetic upper, rubber sole', 'Wipe with a damp cloth.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(22, 5, 2, 'Classic Leather Loafers', 'Elegant leather loafers for a polished look.', 85.99, 'Fits true to size.', 'Genuine leather', 'Use leather cleaner.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(23, 5, 3, 'Retro High-Tops', 'Vintage style high-top sneakers that bring back the ''80s.', 75.99, 'Available in multiple sizes.', 'Canvas upper, rubber sole', 'Machine washable.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(24, 5, 4, 'Glitter Pumps', 'High-heeled glitter pumps perfect for evening wear and special occasions.', 95.99, 'Check our size guide for the perfect fit.', 'Synthetic glitter material, leather insole', 'Spot clean.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(25, 5, 5, 'Trail Running Shoes', 'Rugged and ready for any trail, designed to provide grip and comfort on rough terrains.', 120.99, 'Follow our foot measurement guide.', 'Synthetic mesh upper, rugged rubber outsole', 'Clean with a brush or cloth.', 'Y');

-- Accessories Category (ID 6)
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(26, 6, 6, 'Retro Round Sunglasses', 'Classic round sunglasses with a 70s vibe.', 29.99, 'One size fits all.', 'Metal frame, UV-protected lenses', 'Wipe with soft cloth.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(27, 6, 5, 'Crystal Clutch Bag', 'Elegant clutch with embedded crystals, ideal for parties.', 69.99, 'Standard party clutch size.', 'Satin and rhinestones', 'Spot clean only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(28, 6, 8, 'Premium Leather Wallet', 'Slim leather wallet designed for professionals.', 49.99, 'Universal fit.', 'Genuine leather', 'Wipe with dry cloth.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(29, 6, 3, 'Sports Wristbands Set', 'Absorbent wristbands for intense workouts and sports.', 14.99, 'One size.', 'Cotton terry cloth', 'Machine wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(30, 6, 10, 'Bluetooth Beanie Hat', 'Beanie with built-in Bluetooth speakers, perfect for cold morning commutes.', 39.99, 'One size fits most.', 'Wool blend + Bluetooth components', 'Remove electronics before wash.', 'Y');

-- Sportswear Category (ID 7)
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(31, 7, 3, 'Performance Running Tee', 'Lightweight and sweat-wicking fabric for peak athletic performance.', 27.99, 'Athletic fit.', 'Polyester', 'Machine washable.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(32, 7, 5, 'Seamless Yoga Leggings', 'Stretchy and breathable leggings perfect for yoga and fitness.', 39.99, 'Refer to leggings size chart.', 'Spandex blend', 'Cold wash only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(33, 7, 10, 'Smart Fitness Shirt', 'Integrated with sensors to track heartbeat and calories burned.', 89.99, 'Snug fit.', 'Nylon with electronic sensors', 'Remove electronics before wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(34, 7, 4, 'Quick-Dry Running Jacket', 'Breathable, waterproof jacket for outdoor sports.', 64.99, 'Check sports sizing guide.', 'Polyester', 'Machine wash cold.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(35, 7, 1, 'Urban Active Shorts', 'Stylish shorts for gym or street workout.', 33.99, 'Fits true to size.', 'Cotton-poly blend', 'Machine wash.', 'Y');

-- Swimwear Category (ID 8)
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(36, 8, 6, 'Classic Two-Piece Bikini', 'Vintage-style bikini with high-waisted bottoms.', 49.99, 'Refer to swimwear size chart.', 'Nylon and spandex', 'Rinse after use, hand wash.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(37, 8, 5, 'Luxury One-Piece Swimsuit', 'Elegant one-piece with shimmer details for a glamorous poolside look.', 79.99, 'Fits true to size.', 'Polyester blend', 'Hand wash only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(38, 8, 1, 'Urban Swim Trunks', 'Bold print swim trunks designed for comfort and style.', 39.99, 'Standard fit.', 'Quick-dry polyester', 'Machine wash cold.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(39, 8, 10, 'Smart UV-Alert Swimwear', 'Swimwear that alerts you to high UV exposure via a color-changing patch.', 59.99, 'Modern fit.', 'Tech-integrated synthetic blend', 'Rinse after use, do not bleach.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(40, 8, 3, 'Athletic Racerback Swimsuit', 'Sporty design for competitive swimming and training.', 45.99, 'Slim athletic fit.', 'Chlorine-resistant fabric', 'Rinse and hang dry.', 'Y');

-- Ethnic Category (ID 9)
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(41, 9, 9, 'Cotton Kurta Set', 'Traditional kurta with churidar pants for festive occasions.', 54.99, 'Refer to ethnic size guide.', '100% cotton', 'Machine wash cold.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(42, 9, 5, 'Embroidered Saree', 'Elegant saree with intricate embroidery for weddings and functions.', 119.99, 'One size fits all.', 'Silk blend', 'Dry clean only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(43, 9, 2, 'Formal Nehru Jacket', 'Classic Nehru jacket ideal for ceremonies and formal ethnic wear.', 74.99, 'Tailored fit.', 'Wool-silk blend', 'Dry clean recommended.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(44, 9, 6, 'Vintage Banarasi Dupatta', 'Graceful dupatta with Banarasi motifs and traditional charm.', 39.99, 'One size.', 'Silk and zari', 'Dry clean only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(45, 9, 7, 'Kids Ethnic Kurti', 'Bright and comfortable ethnic kurti for young girls.', 29.99, 'Sizes available for ages 4-12.', 'Cotton', 'Gentle machine wash.', 'Y');

-- Formals Category (ID 10)
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(46, 10, 8, 'Slim Fit Formal Suit', 'Tailored suit for a professional and elegant look.', 249.99, 'Refer to suit size chart.', 'Wool blend', 'Dry clean only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(47, 10, 2, 'Formal Pencil Skirt', 'Sophisticated skirt for business meetings and formal events.', 69.99, 'True to size.', 'Polyester blend', 'Machine wash cold.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(48, 10, 5, 'Embellished Formal Gown', 'Floor-length gown with delicate embellishments for gala nights.', 179.99, 'Tailored fit.', 'Silk with sequins', 'Dry clean only.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(49, 10, 10, 'Smart Blazer with NFC', 'Formal blazer with built-in NFC tag for business cards.', 149.99, 'Regular fit.', 'Wool-tech blend', 'Remove tag before cleaning.', 'Y');
INSERT INTO Products (ProductID, CategoryID, BrandID, ProductName, Description, Price, SizeGuide, MaterialDetails, CareInstructions, IsAvailable) VALUES 
(50, 10, 1, 'Urban Formal Trousers', 'Minimalist trousers for modern business casual style.', 89.99, 'See fit guide.', 'Poly-viscose', 'Machine wash.', 'Y');
