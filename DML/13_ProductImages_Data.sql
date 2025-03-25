BEGIN
   -- Delete all product image records
   DELETE FROM ProductImages;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('ProductImages table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during ProductImages table cleanup: ' || SQLERRM);
END;
/


INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (1, 1, 'https://example.com/images/products/1.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (2, 2, 'https://example.com/images/products/2.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (3, 3, 'https://example.com/images/products/3.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (4, 4, 'https://example.com/images/products/4.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (5, 5, 'https://example.com/images/products/5.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (6, 6, 'https://example.com/images/products/6.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (7, 7, 'https://example.com/images/products/7.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (8, 8, 'https://example.com/images/products/8.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (9, 9, 'https://example.com/images/products/9.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (10, 10, 'https://example.com/images/products/10.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (11, 11, 'https://example.com/images/products/11.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (12, 12, 'https://example.com/images/products/12.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (13, 13, 'https://example.com/images/products/13.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (14, 14, 'https://example.com/images/products/14.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (15, 15, 'https://example.com/images/products/15.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (16, 16, 'https://example.com/images/products/16.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (17, 17, 'https://example.com/images/products/17.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (18, 18, 'https://example.com/images/products/18.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (19, 19, 'https://example.com/images/products/19.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (20, 20, 'https://example.com/images/products/20.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (21, 21, 'https://example.com/images/products/21.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (22, 22, 'https://example.com/images/products/22.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (23, 23, 'https://example.com/images/products/23.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (24, 24, 'https://example.com/images/products/24.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (25, 25, 'https://example.com/images/products/25.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (26, 26, 'https://example.com/images/products/26.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (27, 27, 'https://example.com/images/products/27.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (28, 28, 'https://example.com/images/products/28.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (29, 29, 'https://example.com/images/products/29.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (30, 30, 'https://example.com/images/products/30.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (31, 31, 'https://example.com/images/products/31.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (32, 32, 'https://example.com/images/products/32.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (33, 33, 'https://example.com/images/products/33.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (34, 34, 'https://example.com/images/products/34.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (35, 35, 'https://example.com/images/products/35.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (36, 36, 'https://example.com/images/products/36.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (37, 37, 'https://example.com/images/products/37.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (38, 38, 'https://example.com/images/products/38.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (39, 39, 'https://example.com/images/products/39.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (40, 40, 'https://example.com/images/products/40.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (41, 41, 'https://example.com/images/products/41.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (42, 42, 'https://example.com/images/products/42.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (43, 43, 'https://example.com/images/products/43.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (44, 44, 'https://example.com/images/products/44.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (45, 45, 'https://example.com/images/products/45.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (46, 46, 'https://example.com/images/products/46.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (47, 47, 'https://example.com/images/products/47.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (48, 48, 'https://example.com/images/products/48.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (49, 49, 'https://example.com/images/products/49.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (50, 50, 'https://example.com/images/products/50.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (51, 51, 'https://example.com/images/products/51.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (52, 52, 'https://example.com/images/products/52.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (53, 53, 'https://example.com/images/products/53.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (54, 54, 'https://example.com/images/products/54.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (55, 55, 'https://example.com/images/products/55.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (56, 56, 'https://example.com/images/products/56.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (57, 57, 'https://example.com/images/products/57.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (58, 58, 'https://example.com/images/products/58.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (59, 59, 'https://example.com/images/products/59.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (60, 60, 'https://example.com/images/products/60.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (61, 61, 'https://example.com/images/products/61.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (62, 62, 'https://example.com/images/products/62.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (63, 63, 'https://example.com/images/products/63.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (64, 64, 'https://example.com/images/products/64.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (65, 65, 'https://example.com/images/products/65.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (66, 66, 'https://example.com/images/products/66.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (67, 67, 'https://example.com/images/products/67.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (68, 68, 'https://example.com/images/products/68.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (69, 69, 'https://example.com/images/products/69.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (70, 70, 'https://example.com/images/products/70.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (71, 71, 'https://example.com/images/products/71.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (72, 72, 'https://example.com/images/products/72.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (73, 73, 'https://example.com/images/products/73.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (74, 74, 'https://example.com/images/products/74.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (75, 75, 'https://example.com/images/products/75.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (76, 76, 'https://example.com/images/products/76.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (77, 77, 'https://example.com/images/products/77.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (78, 78, 'https://example.com/images/products/78.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (79, 79, 'https://example.com/images/products/79.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (80, 80, 'https://example.com/images/products/80.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (81, 81, 'https://example.com/images/products/81.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (82, 82, 'https://example.com/images/products/82.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (83, 83, 'https://example.com/images/products/83.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (84, 84, 'https://example.com/images/products/84.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (85, 85, 'https://example.com/images/products/85.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (86, 86, 'https://example.com/images/products/86.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (87, 87, 'https://example.com/images/products/87.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (88, 88, 'https://example.com/images/products/88.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (89, 89, 'https://example.com/images/products/89.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (90, 90, 'https://example.com/images/products/90.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (91, 91, 'https://example.com/images/products/91.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (92, 92, 'https://example.com/images/products/92.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (93, 93, 'https://example.com/images/products/93.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (94, 94, 'https://example.com/images/products/94.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (95, 95, 'https://example.com/images/products/95.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (96, 96, 'https://example.com/images/products/96.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (97, 97, 'https://example.com/images/products/97.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (98, 98, 'https://example.com/images/products/98.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (99, 99, 'https://example.com/images/products/99.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (100, 100, 'https://example.com/images/products/100.jpg');
INSERT INTO ProductImages (ProductImageID, VariationID, ProductImageUrl) VALUES (101, 101, 'https://example.com/images/products/101.jpg');