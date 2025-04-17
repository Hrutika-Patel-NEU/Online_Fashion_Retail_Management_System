-- 01_Order_Summary_By_User_Tier_Procedure.sql
-- Procedure: ORDER_SUMMARY_BY_TIER_REPORT
-- Purpose: Displays the number of orders and total revenue aggregated by user tier.
-- Access Control: EXECUTE permission granted to ECOM_APP_REPORT_USER and ECOM_APP_ADMIN.

CREATE OR REPLACE PROCEDURE "ERETAILER_DBA"."ORDER_SUMMARY_BY_TIER_REPORT" AS
    CURSOR order_summary_cursor IS
        SELECT
            T.TIERNAME,
            COUNT(DISTINCT O.ORDERID) AS ORDER_COUNT,
            SUM(OL.SOLDPRICE * OL.QUANTITY) AS TOTAL_REVENUE
        FROM "ERETAILER_DBA"."ORDERS" O
        JOIN "ERETAILER_DBA"."USERS" U ON O.USERID = U.USERID
        JOIN "ERETAILER_DBA"."USERTIERS" T ON U.USERTIERID = T.TIERID
        JOIN "ERETAILER_DBA"."ORDERLINEITEMS" OL ON O.ORDERID = OL.ORDERID
        GROUP BY T.TIERNAME
        ORDER BY TOTAL_REVENUE DESC;

    v_tiername         "ERETAILER_DBA"."USERTIERS".TIERNAME%TYPE;
    v_order_count      NUMBER;
    v_total_revenue    NUMBER;
BEGIN
    OPEN order_summary_cursor;

    LOOP
        FETCH order_summary_cursor 
        INTO v_tiername, v_order_count, v_total_revenue;

        EXIT WHEN order_summary_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Tier: ' || v_tiername || ', ' ||
            'Orders: ' || v_order_count || ', ' ||
            'Revenue: $' || TO_CHAR(v_total_revenue, 'FM999,999,999.00')
        );
    END LOOP;

    CLOSE order_summary_cursor;
END;
/

-- Grant EXECUTE to both admin and report roles
GRANT EXECUTE ON "ERETAILER_DBA"."ORDER_SUMMARY_BY_TIER_REPORT" TO "ECOM_APP_REPORT_USER";
GRANT EXECUTE ON "ERETAILER_DBA"."ORDER_SUMMARY_BY_TIER_REPORT" TO "ECOM_APP_ADMIN";

