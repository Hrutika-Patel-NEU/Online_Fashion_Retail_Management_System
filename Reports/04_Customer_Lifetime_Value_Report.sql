-- 04_Customer_Lifetime_Value_Report_Procedure.sql
-- Procedure: CUSTOMER_LIFETIME_VALUE_REPORT
-- Purpose: Calculates lifetime spend and order count for each user.
-- Access Control: EXECUTE permission granted to ECOM_APP_REPORT_USER and ECOM_APP_ADMIN.

CREATE OR REPLACE PROCEDURE "ERETAILER_DBA"."CUSTOMER_LIFETIME_VALUE_REPORT" AS
    CURSOR clv_cursor IS
        SELECT
            U.USERID,
            U.FIRSTNAME || ' ' || U.LASTNAME AS FULLNAME,
            U.EMAIL,
            COUNT(DISTINCT O.ORDERID) AS TOTAL_ORDERS,
            SUM(OL.SOLDPRICE * OL.QUANTITY) AS LIFETIME_VALUE
        FROM "ERETAILER_DBA"."USERS" U
        JOIN "ERETAILER_DBA"."ORDERS" O ON U.USERID = O.USERID
        JOIN "ERETAILER_DBA"."ORDERLINEITEMS" OL ON O.ORDERID = OL.ORDERID
        GROUP BY U.USERID, U.FIRSTNAME, U.LASTNAME, U.EMAIL
        ORDER BY LIFETIME_VALUE DESC;

    v_userid         "ERETAILER_DBA"."USERS".USERID%TYPE;
    v_fullname       VARCHAR2(200);
    v_email          "ERETAILER_DBA"."USERS".EMAIL%TYPE;
    v_order_count    NUMBER;
    v_lifetime_value NUMBER;
BEGIN
    OPEN clv_cursor;

    LOOP
        FETCH clv_cursor INTO
            v_userid, v_fullname, v_email, v_order_count, v_lifetime_value;

        EXIT WHEN clv_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'User: ' || v_fullname || ' (' || v_email || ')' || ', ' ||
            'Orders: ' || v_order_count || ', ' ||
            'Lifetime Value: $' || TO_CHAR(v_lifetime_value, 'FM999,999,999.00')
        );
    END LOOP;

    CLOSE clv_cursor;
END;
/

-- Grant EXECUTE to admin and report user roles
GRANT EXECUTE ON "ERETAILER_DBA"."CUSTOMER_LIFETIME_VALUE_REPORT" TO "ECOM_APP_REPORT_USER";
GRANT EXECUTE ON "ERETAILER_DBA"."CUSTOMER_LIFETIME_VALUE_REPORT" TO "ECOM_APP_ADMIN";
