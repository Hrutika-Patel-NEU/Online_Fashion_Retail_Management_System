CREATE OR REPLACE PROCEDURE sp_collapse_duplicate_cart_items IS
BEGIN
  -- Merging duplicate cart items by summing their quantities
  MERGE INTO SHOPPINGCART sc
  USING (
    SELECT USERID, VARIATIONID, SUM(QUANTITY) AS TOTAL_QTY   -- Quantities of duplicates
    FROM SHOPPINGCART
    GROUP BY USERID, VARIATIONID                              -- Group by user and variation
    HAVING COUNT(*) > 1                                       -- Only considering duplicates
  ) dup
  ON (sc.USERID = dup.USERID AND sc.VARIATIONID = dup.VARIATIONID)  -- Match on user and variation
  WHEN MATCHED THEN
    UPDATE SET sc.QUANTITY = dup.TOTAL_QTY;                  -- Update with the sum of qty

  -- Deleting all but one row per user/variation pair keeping the the smallest ROWID
  DELETE FROM SHOPPINGCART sc
  WHERE ROWID NOT IN (
    SELECT MIN(ROWID)                                        -- Keep only one row per group
    FROM SHOPPINGCART
    GROUP BY USERID, VARIATIONID
  );

  -- Log success message
  DBMS_OUTPUT.PUT_LINE('Duplicate cart entries collapsed successfully.');
END;
