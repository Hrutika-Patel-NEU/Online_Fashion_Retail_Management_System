-- 01_Order_Summary_By_User_Tier.sql
-- Displays the number of orders and total revenue aggregated by user tier using a PL/SQL cursor

SET SERVEROUTPUT ON;

DECLARE
    -- Cursor to fetch order summary grouped by user tier
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

    -- Variables to hold fetched data
    v_tiername         "ERETAILER_DBA"."USERTIERS".TIERNAME%TYPE;
    v_order_count      NUMBER;
    v_total_revenue    NUMBER;
BEGIN
    -- Open the cursor
    OPEN order_summary_cursor;

    -- Loop through the fetched records and display them
    LOOP
        FETCH order_summary_cursor 
        INTO v_tiername, v_order_count, v_total_revenue;

        EXIT WHEN order_summary_cursor%NOTFOUND;

        -- Display tier details and order summary
        DBMS_OUTPUT.PUT_LINE(
            'Tier: ' || v_tiername || ', ' ||
            'Orders: ' || v_order_count || ', ' ||
            'Revenue: $' || TO_CHAR(v_total_revenue, 'FM999,999,999.00')
        );
    END LOOP;

    -- Close the cursor
    CLOSE order_summary_cursor;
END;
/
