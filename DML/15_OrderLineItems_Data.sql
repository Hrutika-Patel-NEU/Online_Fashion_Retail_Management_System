BEGIN
   -- Delete all order line item records
   DELETE FROM OrderLineItems;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('OrderLineItems table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during OrderLineItems table cleanup: ' || SQLERRM);
END;
/


INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (1, 1, 71, 35.5, 3,
TO_TIMESTAMP('2024-01-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (2, 2, 26, 118.4, 2,
TO_TIMESTAMP('2024-02-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (3, 2, 76, 164.87, 1,
TO_TIMESTAMP('2024-01-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (4, 2, 45, 143.27, 1,
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (5, 3, 29, 104.96, 1,
TO_TIMESTAMP('2024-02-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (6, 4, 73, 117.85, 3,
TO_TIMESTAMP('2024-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (7, 4, 37, 135.76, 3,
TO_TIMESTAMP('2024-01-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (8, 4, 81, 42.78, 1,
TO_TIMESTAMP('2024-02-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (9, 5, 38, 55.32, 1,
TO_TIMESTAMP('2024-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (10, 5, 22, 199.05, 1,
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (11, 5, 2, 126.55, 1,
TO_TIMESTAMP('2024-01-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (12, 5, 44, 69.65, 2,
TO_TIMESTAMP('2024-01-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (13, 6, 65, 171.06, 3,
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (14, 6, 45, 209.93, 2,
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (15, 6, 35, 152.99, 1,
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (16, 7, 33, 80.97, 2,
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (17, 7, 10, 170.6, 1,
TO_TIMESTAMP('2024-01-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (18, 8, 92, 175.13, 1,
TO_TIMESTAMP('2024-01-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (19, 8, 60, 78.03, 2,
TO_TIMESTAMP('2024-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (20, 8, 101, 45.87, 2,
TO_TIMESTAMP('2024-01-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (21, 8, 7, 21.1, 1,
TO_TIMESTAMP('2024-02-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (22, 9, 71, 163.4, 1,
TO_TIMESTAMP('2024-01-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (23, 9, 10, 48.6, 3,
TO_TIMESTAMP('2024-01-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (24, 9, 91, 199.93, 1,
TO_TIMESTAMP('2024-01-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (25, 9, 34, 207.71, 2,
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (26, 10, 3, 78.55, 1,
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (27, 11, 74, 108.61, 3,
TO_TIMESTAMP('2024-01-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (28, 12, 52, 137.52, 2,
TO_TIMESTAMP('2024-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (29, 12, 83, 178.57, 1,
TO_TIMESTAMP('2024-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (30, 13, 64, 90.74, 2,
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (31, 13, 61, 109.76, 2,
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (32, 14, 68, 49.44, 3,
TO_TIMESTAMP('2024-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (33, 15, 90, 102.67, 2,
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (34, 15, 26, 118.24, 1,
TO_TIMESTAMP('2024-01-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (35, 15, 57, 159.92, 3,
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (36, 16, 29, 241.35, 2,
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (37, 17, 80, 171.06, 2,
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (38, 17, 29, 71.36, 1,
TO_TIMESTAMP('2024-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (39, 17, 32, 150.01, 2,
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (40, 17, 71, 112.0, 1,
TO_TIMESTAMP('2024-01-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (41, 18, 69, 103.36, 1,
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (42, 18, 35, 172.51, 2,
TO_TIMESTAMP('2024-01-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (43, 18, 32, 95.76, 3,
TO_TIMESTAMP('2024-01-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (44, 19, 8, 155.43, 2,
TO_TIMESTAMP('2024-01-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (45, 19, 4, 27.41, 3,
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (46, 20, 47, 58.16, 2,
TO_TIMESTAMP('2024-01-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (47, 20, 72, 164.22, 2,
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (48, 20, 73, 168.53, 3,
TO_TIMESTAMP('2024-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (49, 20, 16, 243.96, 3,
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (50, 21, 22, 95.68, 2,
TO_TIMESTAMP('2024-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (51, 22, 38, 85.19, 2,
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (52, 22, 101, 211.19, 1,
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (53, 23, 43, 208.96, 1,
TO_TIMESTAMP('2024-02-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (54, 23, 18, 139.34, 2,
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (55, 23, 27, 101.39, 2,
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (56, 23, 66, 21.1, 3,
TO_TIMESTAMP('2024-02-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (57, 24, 56, 115.36, 2,
TO_TIMESTAMP('2024-01-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (58, 24, 92, 90.72, 3,
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (59, 24, 65, 27.66, 3,
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (60, 25, 3, 74.01, 3,
TO_TIMESTAMP('2024-02-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (61, 25, 12, 61.76, 2,
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (62, 26, 78, 221.65, 2,
TO_TIMESTAMP('2024-01-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (63, 26, 31, 59.1, 1,
TO_TIMESTAMP('2024-01-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (64, 26, 74, 197.01, 1,
TO_TIMESTAMP('2024-02-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (65, 26, 97, 97.56, 2,
TO_TIMESTAMP('2024-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (66, 27, 4, 45.42, 1,
TO_TIMESTAMP('2024-01-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (67, 27, 22, 143.81, 2,
TO_TIMESTAMP('2024-01-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (68, 27, 11, 132.64, 3,
TO_TIMESTAMP('2024-01-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (69, 28, 54, 201.17, 1,
TO_TIMESTAMP('2024-01-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (70, 28, 71, 152.16, 1,
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (71, 28, 9, 60.4, 1,
TO_TIMESTAMP('2024-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (72, 28, 62, 28.85, 1,
TO_TIMESTAMP('2024-01-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (73, 29, 37, 107.64, 3,
TO_TIMESTAMP('2024-01-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (74, 29, 4, 164.41, 2,
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (75, 29, 46, 167.61, 3,
TO_TIMESTAMP('2024-01-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (76, 30, 39, 170.37, 3,
TO_TIMESTAMP('2024-01-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (77, 30, 16, 30.68, 3,
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (78, 30, 25, 51.53, 2,
TO_TIMESTAMP('2024-01-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO OrderLineItems (OrderLineID, OrderID, VariationID, SoldPrice, Quantity, CreatedAt, UpdatedAt)
VALUES (79, 30, 67, 215.06, 2,
TO_TIMESTAMP('2024-01-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-01-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
