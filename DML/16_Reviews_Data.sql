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

INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    201, 18, 4, 5, 'Great product 201!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    202, 18, 29, 5, 'Great product 202!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    203, 19, 30, 5, 'Great product 203!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    204, 19, 5, 5, 'Great product 204!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    205, 23, 20, 5, 'Great product 205!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    206, 23, 29, 5, 'Great product 206!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    207, 32, 13, 5, 'Great product 207!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    208, 31, 28, 5, 'Great product 208!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    209, 30, 13, 5, 'Great product 209!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    210, 30, 8, 5, 'Great product 210!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    211, 28, 24, 5, 'Great product 211!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    212, 28, 15, 5, 'Great product 212!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    213, 27, 28, 5, 'Great product 213!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    214, 26, 12, 5, 'Great product 214!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO "ERETAILER_DBA"."REVIEWS" (
    REVIEWID, PRODUCTID, USERID, RATING, REVIEWCOMMENT, CREATEDAT, UPDATEDAT
) VALUES (
    215, 22, 6, 5, 'Great product 215!',
    TO_TIMESTAMP('2024-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);