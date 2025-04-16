-- 02_Shipping_Address_Usage_Frequency_Procedure.sql
-- Procedure: SHIPPING_ADDRESS_USAGE_REPORT
-- Purpose: Analyzes the ADDRESS table to identify frequently used shipping destinations.
-- Access Control: EXECUTE permission granted to ECOM_APP_REPORT_USER and ECOM_APP_ADMIN.

CREATE OR REPLACE PROCEDURE "ERETAILER_DBA"."SHIPPING_ADDRESS_USAGE_REPORT" AS
    CURSOR address_usage_cursor IS
        SELECT
            ZIPCODE,
            CITY,
            STATE,
            COUNTRY,
            COUNT(*) AS ADDRESS_USAGE_COUNT
        FROM "ERETAILER_DBA"."ADDRESS"
        GROUP BY ZIPCODE, CITY, STATE, COUNTRY
        ORDER BY ADDRESS_USAGE_COUNT DESC;

    v_zip        "ERETAILER_DBA"."ADDRESS".ZIPCODE%TYPE;
    v_city       "ERETAILER_DBA"."ADDRESS".CITY%TYPE;
    v_state      "ERETAILER_DBA"."ADDRESS".STATE%TYPE;
    v_country    "ERETAILER_DBA"."ADDRESS".COUNTRY%TYPE;
    v_count      NUMBER;
BEGIN
    OPEN address_usage_cursor;

    LOOP
        FETCH address_usage_cursor
        INTO v_zip, v_city, v_state, v_country, v_count;

        EXIT WHEN address_usage_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ZIP: ' || v_zip || ', ' ||
            'City: ' || v_city || ', ' ||
            'State: ' || v_state || ', ' ||
            'Country: ' || v_country || ', ' ||
            'Used: ' || v_count || ' times'
        );
    END LOOP;

    CLOSE address_usage_cursor;
END;
/

-- Grant EXECUTE to admin and report user roles
GRANT EXECUTE ON "ERETAILER_DBA"."SHIPPING_ADDRESS_USAGE_REPORT" TO "ECOM_APP_REPORT_USER";
GRANT EXECUTE ON "ERETAILER_DBA"."SHIPPING_ADDRESS_USAGE_REPORT" TO "ECOM_APP_ADMIN";
