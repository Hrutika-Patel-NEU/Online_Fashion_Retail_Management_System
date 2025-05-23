BEGIN
   -- Delete all product attribute records
   DELETE FROM ProductAttributes;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('ProductAttributes table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during ProductAttributes table cleanup: ' || SQLERRM);
END;
/


INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(1, 'Material');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(2, 'Fit');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(3, 'Sleeve Length');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(4, 'Neck Type');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(5, 'Pattern');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(6, 'Occasion');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(7, 'Length');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(8, 'Waist Rise');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(9, 'Closure Type');
INSERT INTO ProductAttributes (AttributeID, AttributeName) VALUES 
(10, 'Technology');
