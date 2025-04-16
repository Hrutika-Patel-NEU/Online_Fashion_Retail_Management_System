-- 24_Update_User_Tier_After_Checkout.sql
-- Updates user’s tier based on lifetime purchases

CREATE OR REPLACE TRIGGER "ERETAILER_DBA"."TRG_UpdateUserTierAfterCheckout"
AFTER INSERT ON "ERETAILER_DBA"."ORDERS"
FOR EACH ROW
DECLARE
    v_total NUMBER := 0;
    v_new_tier_id NUMBER;
BEGIN
    -- Calculate total spending by user
    SELECT COALESCE(SUM(SOLDPRICE * QUANTITY), 0)
    INTO v_total
    FROM "ERETAILER_DBA"."ORDERLINEITEMS" OLI
    JOIN "ERETAILER_DBA"."ORDERS" O ON O.ORDERID = OLI.ORDERID
    WHERE O.USERID = :NEW.USERID;

    -- Determine new tier ID
    SELECT T.TIERID
    INTO v_new_tier_id
    FROM (
        SELECT TIERID, TIERNAME
        FROM "ERETAILER_DBA"."USERTIERS"
        WHERE (TIERNAME = 'Standard' AND v_total < 1000)
           OR (TIERNAME = 'Bronze' AND v_total >= 1000 AND v_total < 2000)
           OR (TIERNAME = 'Silver' AND v_total >= 2000 AND v_total < 3500)
           OR (TIERNAME = 'Gold' AND v_total >= 3500 AND v_total < 4000)
           OR (TIERNAME = 'Platinum' AND v_total >= 4000)
    ) T
    FETCH FIRST 1 ROWS ONLY;

    -- Update user tier if different
    UPDATE "ERETAILER_DBA"."USERS"
    SET USERTIERID = v_new_tier_id
    WHERE USERID = :NEW.USERID;
END;
/
