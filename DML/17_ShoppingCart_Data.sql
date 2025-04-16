BEGIN
   -- Delete all shopping cart records
   DELETE FROM ShoppingCart;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('ShoppingCart table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during ShoppingCart table cleanup: ' || SQLERRM);
END;
/


INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (1, 1, 81, 2,
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (2, 1, 79, 1,
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (3, 2, 53, 3,
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (4, 2, 30, 3,
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (5, 3, 68, 3,
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (6, 3, 3, 3,
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (7, 3, 99, 2,
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (8, 4, 60, 3,
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (9, 4, 39, 3,
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (10, 4, 45, 2,
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (11, 5, 19, 3,
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (12, 5, 24, 1,
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (13, 5, 61, 2,
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (14, 6, 14, 3,
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (15, 6, 26, 2,
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (16, 7, 49, 1,
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (17, 7, 94, 2,
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (18, 7, 22, 2,
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (19, 8, 34, 2,
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (20, 8, 29, 2,
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (21, 8, 52, 2,
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (22, 9, 100, 1,
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (23, 9, 30, 1,
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (24, 10, 30, 1,
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (25, 10, 67, 2,
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (26, 11, 52, 2,
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (27, 12, 27, 3,
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (28, 12, 50, 1,
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (29, 13, 72, 2,
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (30, 13, 34, 1,
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (31, 14, 59, 3,
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (32, 15, 51, 2,
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (33, 15, 71, 3,
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (34, 16, 22, 1,
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (35, 17, 23, 3,
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (36, 17, 21, 1,
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (37, 17, 37, 1,
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (38, 18, 27, 3,
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (39, 18, 81, 2,
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (40, 18, 90, 2,
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (41, 19, 90, 3,
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (42, 19, 30, 2,
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ShoppingCart (CartID, UserID, VariationID, Quantity, CreatedAt, UpdatedAt)
VALUES (43, 20, 88, 1,
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
