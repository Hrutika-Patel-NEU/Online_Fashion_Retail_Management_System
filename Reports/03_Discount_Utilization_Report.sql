-- 03_Discount_Utilization_Report_Procedure.sql
-- Procedure: DISCOUNT_UTILIZATION_REPORT
-- Purpose: Shows orders placed by user tier and how much discount was applied.
-- Access Control: EXECUTE permission granted to ECOM_APP_REPORT_USER and ECOM_APP_ADMIN.

CREATE OR REPLACE PROCEDURE "ERETAILER_DBA"."DISCOUNT_UTILIZATION_REPORT" AS
    CURSOR discount_cursor IS
        SELECT
            T.TIERNAME,
            T.DISCOUNTRATE,
            COUNT(DISTINCT O.ORDERID) AS TOTAL_ORDERS,
            SUM(P.PRICE * OL.QUANTITY) AS ORIGINAL_TOTAL,
            SUM(OL.SOLDPRICE * OL.QUANTITY) AS DISCOUNTED_TOTAL,
            SUM((P.PRICE - OL.SOLDPRICE) * OL.QUANTITY) AS TOTAL_DISCOUNT_USED
        FROM "ERETAILER_DBA"."ORDERS" O
        JOIN "ERETAILER_DBA"."USERS" U ON O.USERID = U.USERID
        JOIN "ERETAILER_DBA"."USERTIERS" T ON U.USERTIERID = T.TIERID
        JOIN "ERETAILER_DBA"."ORDERLINEITEMS" OL ON O.ORDERID = OL.ORDERID
        JOIN "ERETAILER_DBA"."PRODUCTVARIATIONS" V ON OL.VARIATIONID = V.VARIATIONID
        JOIN "ERETAILER_DBA"."PRODUCTS" P ON V.PRODUCTID = P.PRODUCTID
        GROUP BY T.TIERNAME, T.DISCOUNTRATE
        ORDER BY TOTAL_DISCOUNT_USED DESC;

    v_tiername           "ERETAILER_DBA"."USERTIERS".TIERNAME%TYPE;
    v_discountrate       "ERETAILER_DBA"."USERTIERS".DISCOUNTRATE%TYPE;
    v_total_orders       NUMBER;
    v_original_total     NUMBER;
    v_discounted_total   NUMBER;
    v_total_discount     NUMBER;
BEGIN
    OPEN discount_cursor;

    LOOP
        FETCH discount_cursor INTO
            v_tiername, v_discountrate, v_total_orders,
            v_original_total, v_discounted_total, v_total_discount;

        EXIT WHEN discount_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Tier: ' || v_tiername || ' (' || v_discountrate || '%)' || ', ' ||
            'Orders: ' || v_total_orders || ', ' ||
            'Original: $' || TO_CHAR(v_original_total, 'FM999,999,999.00') || ', ' ||
            'Discounted: $' || TO_CHAR(v_discounted_total, 'FM999,999,999.00') || ', ' ||
            'Saved: $' || TO_CHAR(v_total_discount, 'FM999,999,999.00')
        );
    END LOOP;

    CLOSE discount_cursor;
END;
/

-- Grant EXECUTE to admin and report user roles
GRANT EXECUTE ON "ERETAILER_DBA"."DISCOUNT_UTILIZATION_REPORT" TO "ECOM_APP_REPORT_USER";
GRANT EXECUTE ON "ERETAILER_DBA"."DISCOUNT_UTILIZATION_REPORT" TO "ECOM_APP_ADMIN";

