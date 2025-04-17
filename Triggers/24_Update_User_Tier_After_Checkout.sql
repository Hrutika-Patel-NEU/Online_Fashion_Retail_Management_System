-- 24_Update_User_Tier_After_Checkout.sql
-- Updates user’s tier based on lifetime purchases

CREATE OR REPLACE PROCEDURE "ERETAILER_DBA"."UPDATE_USER_TIER_BY_USERID"(p_userid IN NUMBER) AS
    v_total NUMBER := 0;
    v_new_tier_id NUMBER;
BEGIN
    SELECT COALESCE(SUM(OL.SOLDPRICE * OL.QUANTITY), 0)
    INTO v_total
    FROM "ERETAILER_DBA"."ORDERS" O
    JOIN "ERETAILER_DBA"."ORDERLINEITEMS" OL ON O.ORDERID = OL.ORDERID
    WHERE O.USERID = p_userid;

    SELECT tier_result.TIERID
    INTO v_new_tier_id
    FROM (
        SELECT TIERID
        FROM "ERETAILER_DBA"."USERTIERS"
        WHERE (TIERNAME = 'Standard' AND v_total < 1000)
           OR (TIERNAME = 'Bronze' AND v_total >= 1000 AND v_total < 2000)
           OR (TIERNAME = 'Silver' AND v_total >= 2000 AND v_total < 3500)
           OR (TIERNAME = 'Gold' AND v_total >= 3500 AND v_total < 4000)
           OR (TIERNAME = 'Platinum' AND v_total >= 4000)
        ORDER BY TIERID DESC
        FETCH FIRST 1 ROWS ONLY
    ) tier_result;

    UPDATE "ERETAILER_DBA"."USERS"
    SET USERTIERID = v_new_tier_id
    WHERE USERID = p_userid;
END;
/

CREATE OR REPLACE TRIGGER "ERETAILER_DBA"."TRG_UpdateUserTierAfterCheckout"
AFTER INSERT ON "ERETAILER_DBA"."ORDERS"
DECLARE
    CURSOR user_cursor IS
        SELECT DISTINCT USERID FROM "ERETAILER_DBA"."ORDERS"
        WHERE CREATEDAT = (SELECT MAX(CREATEDAT) FROM "ERETAILER_DBA"."ORDERS"); -- or filter more precisely
BEGIN
    FOR u IN user_cursor LOOP
        "ERETAILER_DBA"."UPDATE_USER_TIER_BY_USERID"(u.USERID);
    END LOOP;
END;
/