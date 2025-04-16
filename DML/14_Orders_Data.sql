BEGIN
   -- Delete all order records
   DELETE FROM Orders;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('Orders table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during Orders table cleanup: ' || SQLERRM);
END;
/


INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (1, 1, 'Cancelled', 'Cash on Delivery', 'Paid', 
TO_TIMESTAMP('2023-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (2, 2, 'Cancelled', 'Debit Card', 'Pending', 
TO_TIMESTAMP('2023-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (3, 3, 'Delivered', 'UPI', 'Paid', 
TO_TIMESTAMP('2023-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (4, 4, 'Processing', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-04-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (5, 5, 'Cancelled', 'Net Banking', 'Paid', 
TO_TIMESTAMP('2023-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (6, 6, 'Delivered', 'UPI', 'Paid', 
TO_TIMESTAMP('2023-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (7, 7, 'Cancelled', 'Cash on Delivery', 'Failed', 
TO_TIMESTAMP('2023-11-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-12-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (8, 8, 'Shipped', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (9, 9, 'Processing', 'Credit Card', 'Failed', 
TO_TIMESTAMP('2023-01-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-01-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (10, 10, 'Cancelled', 'UPI', 'Paid', 
TO_TIMESTAMP('2023-01-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-01-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (11, 11, 'Shipped', 'Cash on Delivery', 'Paid', 
TO_TIMESTAMP('2023-04-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-04-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (12, 12, 'Cancelled', 'Net Banking', 'Failed', 
TO_TIMESTAMP('2023-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (13, 13, 'Shipped', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-01-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-01-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (14, 14, 'Processing', 'Net Banking', 'Failed', 
TO_TIMESTAMP('2023-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (15, 15, 'Shipped', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-12-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-12-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (16, 16, 'Cancelled', 'UPI', 'Failed', 
TO_TIMESTAMP('2023-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-02-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (17, 17, 'Shipped', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-11-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-11-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (18, 18, 'Processing', 'UPI', 'Paid', 
TO_TIMESTAMP('2023-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (19, 19, 'Cancelled', 'Cash on Delivery', 'Pending', 
TO_TIMESTAMP('2023-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (20, 20, 'Shipped', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (21, 21, 'Delivered', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (22, 22, 'Processing', 'Debit Card', 'Paid', 
TO_TIMESTAMP('2023-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (23, 23, 'Processing', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-02-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (24, 24, 'Delivered', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (25, 25, 'Shipped', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (26, 26, 'Processing', 'Credit Card', 'Failed', 
TO_TIMESTAMP('2023-03-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (27, 27, 'Delivered', 'Cash on Delivery', 'Paid', 
TO_TIMESTAMP('2023-12-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-12-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (28, 28, 'Shipped', 'Credit Card', 'Paid', 
TO_TIMESTAMP('2023-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (29, 29, 'Cancelled', 'Debit Card', 'Failed', 
TO_TIMESTAMP('2023-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Orders (OrderID, UserID, Status, PaymentMethod, PaymentStatus, CreatedAt, UpdatedAt)
VALUES (30, 30, 'Cancelled', 'Net Banking', 'Pending', 
TO_TIMESTAMP('2023-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2023-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));