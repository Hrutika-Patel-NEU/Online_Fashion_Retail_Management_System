-- 05_Most_Reviewed_Products_Report.sql
-- Displays products with the most reviews and their average rating

SET SERVEROUTPUT ON;

DECLARE
    CURSOR review_cursor IS
        SELECT
            P.PRODUCTID,
            P.PRODUCTNAME,
            COUNT(R.REVIEWID) AS REVIEW_COUNT,
            ROUND(AVG(R.RATING), 2) AS AVG_RATING
        FROM "ERETAILER_DBA"."PRODUCTS" P
        JOIN "ERETAILER_DBA"."REVIEWS" R ON P.PRODUCTID = R.PRODUCTID
        GROUP BY P.PRODUCTID, P.PRODUCTNAME
        ORDER BY REVIEW_COUNT DESC;

    v_product_id     "ERETAILER_DBA"."PRODUCTS".PRODUCTID%TYPE;
    v_product_name   "ERETAILER_DBA"."PRODUCTS".PRODUCTNAME%TYPE;
    v_review_count   NUMBER;
    v_avg_rating     NUMBER;
BEGIN
    OPEN review_cursor;

    LOOP
        FETCH review_cursor INTO
            v_product_id, v_product_name, v_review_count, v_avg_rating;

        EXIT WHEN review_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Product ID: ' || v_product_id || ', ' ||
            'Name: ' || v_product_name || ', ' ||
            'Reviews: ' || v_review_count || ', ' ||
            'Avg Rating: ' || v_avg_rating
        );
    END LOOP;

    CLOSE review_cursor;
END;
/

