BEGIN
   -- Delete all review records
   DELETE FROM Reviews;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('Reviews table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during Reviews table cleanup: ' || SQLERRM);
END;
/


INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (1, 1, 14, 3, 'Highly recommended!',
TO_TIMESTAMP('2024-02-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (2, 1, 17, 4, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (3, 1, 2, 5, 'Good for casual use.',
TO_TIMESTAMP('2024-03-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (4, 2, 7, 4, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (5, 2, 6, 4, 'Good for casual use.',
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (6, 2, 3, 4, 'Highly recommended!',
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (7, 3, 10, 4, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (8, 3, 16, 5, 'Highly recommended!',
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (9, 3, 18, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (10, 3, 23, 5, 'Good for casual use.',
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (11, 4, 29, 5, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (12, 4, 13, 5, 'Not worth the price.',
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (13, 4, 27, 5, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (14, 5, 18, 4, 'Would buy again.',
TO_TIMESTAMP('2024-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (15, 5, 22, 5, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (16, 6, 22, 5, 'Would buy again.',
TO_TIMESTAMP('2024-02-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (17, 6, 4, 3, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (18, 6, 19, 5, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (19, 7, 3, 3, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (20, 7, 2, 4, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (21, 7, 27, 3, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (22, 8, 24, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (23, 8, 1, 4, 'Would buy again.',
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (24, 9, 10, 5, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (25, 9, 9, 4, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (26, 10, 19, 4, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (27, 10, 2, 4, 'Would buy again.',
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (28, 10, 10, 5, 'Not worth the price.',
TO_TIMESTAMP('2024-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (29, 11, 30, 5, 'Would buy again.',
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (30, 11, 9, 3, 'Not worth the price.',
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (31, 12, 29, 4, 'Good for casual use.',
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (32, 12, 6, 5, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (33, 12, 12, 3, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (34, 12, 8, 4, 'Great quality!',
TO_TIMESTAMP('2024-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (35, 13, 2, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (36, 13, 15, 3, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (37, 13, 9, 3, 'Not worth the price.',
TO_TIMESTAMP('2024-02-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (38, 14, 23, 5, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-03-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (39, 14, 21, 3, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (40, 14, 22, 4, 'Highly recommended!',
TO_TIMESTAMP('2024-02-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (41, 15, 15, 3, 'Size runs a bit small.',
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (42, 15, 8, 3, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (43, 15, 24, 5, 'Not worth the price.',
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (44, 15, 12, 4, 'Would buy again.',
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (45, 16, 27, 4, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (46, 16, 26, 3, 'Size runs a bit small.',
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (47, 16, 3, 5, 'Great quality!',
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (48, 16, 20, 5, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (49, 17, 2, 4, 'Would buy again.',
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (50, 17, 11, 5, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (51, 17, 14, 3, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (52, 17, 22, 4, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (53, 18, 12, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (54, 18, 8, 4, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (55, 18, 13, 4, 'Good for casual use.',
TO_TIMESTAMP('2024-02-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (56, 18, 14, 4, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-02-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (57, 19, 14, 5, 'Great quality!',
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (58, 19, 25, 3, 'Good for casual use.',
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (59, 19, 11, 4, 'Not worth the price.',
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (60, 19, 18, 4, 'Good for casual use.',
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (61, 20, 17, 3, 'Not worth the price.',
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (62, 20, 2, 5, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-02-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (63, 21, 30, 5, 'Highly recommended!',
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (64, 21, 20, 3, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (65, 22, 23, 4, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (66, 22, 25, 5, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (67, 22, 9, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (68, 23, 25, 3, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (69, 23, 15, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (70, 24, 27, 5, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (71, 24, 20, 5, 'Would buy again.',
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (72, 24, 14, 3, 'Highly recommended!',
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (73, 25, 15, 5, 'Highly recommended!',
TO_TIMESTAMP('2024-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (74, 25, 26, 3, 'Highly recommended!',
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (75, 25, 27, 4, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (76, 26, 8, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (77, 26, 9, 4, 'Not worth the price.',
TO_TIMESTAMP('2024-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (78, 27, 22, 3, 'Great quality!',
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (79, 27, 6, 3, 'Highly recommended!',
TO_TIMESTAMP('2024-02-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (80, 27, 14, 5, 'Good for casual use.',
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (81, 28, 2, 4, 'Great quality!',
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (82, 28, 7, 4, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (83, 28, 18, 4, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (84, 28, 6, 5, 'Great quality!',
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (85, 29, 11, 4, 'Great quality!',
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (86, 29, 12, 4, 'Would buy again.',
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (87, 30, 13, 4, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (88, 30, 20, 5, 'Would buy again.',
TO_TIMESTAMP('2024-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (89, 30, 12, 5, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (90, 30, 22, 3, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (91, 31, 21, 3, 'Good for casual use.',
TO_TIMESTAMP('2024-02-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (92, 31, 18, 3, 'Great quality!',
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (93, 32, 25, 3, 'Not worth the price.',
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (94, 32, 22, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (95, 32, 4, 3, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-03-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (96, 32, 23, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (97, 33, 1, 4, 'Highly recommended!',
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (98, 33, 2, 5, 'Great quality!',
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (99, 34, 3, 5, 'Good for casual use.',
TO_TIMESTAMP('2024-02-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (100, 34, 13, 5, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (101, 35, 21, 3, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (102, 35, 19, 5, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (103, 35, 3, 3, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (104, 35, 16, 4, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (105, 36, 3, 5, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (106, 36, 16, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (107, 36, 2, 5, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (108, 36, 26, 5, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (109, 37, 2, 4, 'Great quality!',
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (110, 37, 25, 5, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (111, 37, 3, 4, 'Not worth the price.',
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (112, 37, 9, 5, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (113, 38, 13, 5, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (114, 38, 30, 4, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (115, 38, 17, 3, 'Highly recommended!',
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (116, 39, 28, 3, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (117, 39, 23, 3, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (118, 39, 4, 3, 'Would buy again.',
TO_TIMESTAMP('2024-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (119, 40, 19, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (120, 40, 10, 4, 'Great quality!',
TO_TIMESTAMP('2024-02-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (121, 41, 16, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (122, 41, 25, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (123, 41, 28, 4, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (124, 42, 5, 3, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (125, 42, 27, 4, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (126, 42, 11, 4, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (127, 43, 29, 3, 'Would buy again.',
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (128, 43, 18, 4, 'Highly recommended!',
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (129, 43, 26, 5, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (130, 43, 14, 3, 'Great quality!',
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (131, 44, 12, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (132, 44, 8, 4, 'Perfect fit, love it!',
TO_TIMESTAMP('2024-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (133, 44, 6, 3, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (134, 45, 8, 4, 'Great quality!',
TO_TIMESTAMP('2024-03-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (135, 45, 3, 4, 'Highly recommended!',
TO_TIMESTAMP('2024-02-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (136, 46, 23, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (137, 46, 26, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (138, 46, 2, 4, 'Not worth the price.',
TO_TIMESTAMP('2024-02-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (139, 47, 27, 3, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (140, 47, 17, 3, 'Good for casual use.',
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (141, 47, 28, 5, 'Size runs a bit small.',
TO_TIMESTAMP('2024-02-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (142, 47, 19, 4, 'Size runs a bit small.',
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (143, 48, 24, 4, 'Not worth the price.',
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (144, 48, 29, 4, 'Very comfortable and stylish.',
TO_TIMESTAMP('2024-02-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (145, 48, 6, 4, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (146, 49, 21, 3, 'Color was slightly different than shown.',
TO_TIMESTAMP('2024-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (147, 49, 12, 4, 'Excellent fabric and finish.',
TO_TIMESTAMP('2024-02-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-02-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (148, 50, 30, 5, 'Would buy again.',
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewComment, CreatedAt, UpdatedAt)
VALUES (149, 50, 11, 4, 'Size runs a bit small.',
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_TIMESTAMP('2024-03-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
