BEGIN
   -- Cleanup existing data
   DELETE FROM UserTiers;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('UserTiers table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during cleanup: ' || SQLERRM);
END;
/


INSERT INTO UserTiers (TierID, TierName, DiscountRate) VALUES (1, 'Standard', 0);
INSERT INTO UserTiers (TierID, TierName, DiscountRate) VALUES (2, 'Bronze', 5);
INSERT INTO UserTiers (TierID, TierName, DiscountRate) VALUES (3, 'Silver', 10);
INSERT INTO UserTiers (TierID, TierName, DiscountRate) VALUES (4, 'Gold', 15);
INSERT INTO UserTiers (TierID, TierName, DiscountRate) VALUES (5, 'Platinum', 20);
