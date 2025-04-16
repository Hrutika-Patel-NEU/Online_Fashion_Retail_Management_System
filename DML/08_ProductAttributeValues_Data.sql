BEGIN
   -- Delete all product attribute values
   DELETE FROM ProductAttributeValues;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('ProductAttributeValues table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during ProductAttributeValues table cleanup: ' || SQLERRM);
END;
/


-- AttributeID 1: Material
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (1, 1, 'Cotton');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (2, 1, 'Polyester');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (3, 1, 'Silk');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (4, 1, 'Denim');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (5, 1, 'Wool');

-- AttributeID 2: Fit
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (6, 2, 'Slim');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (7, 2, 'Regular');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (8, 2, 'Loose');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (9, 2, 'Tailored');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (10, 2, 'Relaxed');

-- AttributeID 3: Sleeve Length
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (11, 3, 'Full');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (12, 3, 'Half');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (13, 3, 'Sleeveless');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (14, 3, 'Three-Quarter');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (15, 3, 'Cap Sleeve');

-- AttributeID 4: Neck Type
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (16, 4, 'Round Neck');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (17, 4, 'V-Neck');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (18, 4, 'Collared');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (19, 4, 'Mandarin Collar');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (20, 4, 'Boat Neck');

-- AttributeID 5: Pattern
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (21, 5, 'Solid');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (22, 5, 'Striped');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (23, 5, 'Printed');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (24, 5, 'Checked');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (25, 5, 'Embroidered');

-- AttributeID 6: Occasion
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (26, 6, 'Casual');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (27, 6, 'Formal');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (28, 6, 'Party');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (29, 6, 'Sports');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (30, 6, 'Wedding');

-- AttributeID 7: Length
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (31, 7, 'Short');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (32, 7, 'Knee Length');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (33, 7, 'Midi');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (34, 7, 'Full Length');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (35, 7, 'Ankle Length');

-- AttributeID 8: Waist Rise
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (36, 8, 'High Rise');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (37, 8, 'Mid Rise');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (38, 8, 'Low Rise');

-- AttributeID 9: Closure Type
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (39, 9, 'Zipper');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (40, 9, 'Button');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (41, 9, 'Drawstring');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (42, 9, 'Elastic');

-- AttributeID 10: Technology
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (43, 10, 'Bluetooth Enabled');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (44, 10, 'UV Alert');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (45, 10, 'Heated Fabric');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (46, 10, 'Moisture Wicking');
INSERT INTO ProductAttributeValues (ValueID, AttributeID, ValueName) VALUES (47, 10, 'NFC Tag');
