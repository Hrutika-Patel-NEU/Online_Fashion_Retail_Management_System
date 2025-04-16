BEGIN
   -- Delete all product category records
   DELETE FROM ProductCategories;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('ProductCategories table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during ProductCategories table cleanup: ' || SQLERRM);
END;
/


INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(1, 'Tops', 'Includes a variety of tops from casual tees to formal shirts.', 'Clothing', 'tops.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(2, 'Bottoms', 'Features items like jeans, trousers, skirts, and shorts.', 'Clothing', 'bottoms.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(3, 'Dresses', 'All types of dresses for different occasions.', 'Clothing', 'dresses.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(4, 'Outerwear', 'Includes jackets, coats, blazers, and sweaters.', 'Clothing', 'outerwear.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(5, 'Footwear', 'A variety of shoes, from formal wear to casual and athletic.', 'Accessories', 'footwear.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(6, 'Accessories', 'Bags, belts, hats, jewelry, and more.', 'Accessories', 'accessories.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(7, 'Sportswear', 'Clothing and accessories designed for sports and physical activities.', 'Clothing', 'sportswear.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(8, 'Swimwear', 'Range of swimwear for men and women suitable for swimming or beach activities.', 'Clothing', 'swimwear.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(9, 'Ethnic Wear', 'Traditional clothing including sarees, kurtas, and ethnic dresses.', 'Clothing', 'ethnic.jpg');
INSERT INTO ProductCategories (CategoryID, CategoryName, CategoryDescription, CategoryType, CategoryImage) VALUES 
(10, 'Formal Wear', 'Suits, formal dresses, and other clothing suitable for professional or formal occasions.', 'Clothing', 'formalwear.jpg');
