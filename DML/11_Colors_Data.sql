BEGIN
   -- Delete all color records
   DELETE FROM Colors;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('Colors table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during Colors table cleanup: ' || SQLERRM);
END;
/


INSERT INTO Colors (ColorID, ColorName) VALUES (1, 'Black');
INSERT INTO Colors (ColorID, ColorName) VALUES (2, 'White');
INSERT INTO Colors (ColorID, ColorName) VALUES (3, 'Red');
INSERT INTO Colors (ColorID, ColorName) VALUES (4, 'Blue');
INSERT INTO Colors (ColorID, ColorName) VALUES (5, 'Green');
INSERT INTO Colors (ColorID, ColorName) VALUES (6, 'Yellow');
INSERT INTO Colors (ColorID, ColorName) VALUES (7, 'Pink');
INSERT INTO Colors (ColorID, ColorName) VALUES (8, 'Purple');
INSERT INTO Colors (ColorID, ColorName) VALUES (9, 'Grey');
INSERT INTO Colors (ColorID, ColorName) VALUES (10, 'Brown');
INSERT INTO Colors (ColorID, ColorName) VALUES (11, 'Orange');
INSERT INTO Colors (ColorID, ColorName) VALUES (12, 'Beige');
INSERT INTO Colors (ColorID, ColorName) VALUES (13, 'Navy');
INSERT INTO Colors (ColorID, ColorName) VALUES (14, 'Maroon');
INSERT INTO Colors (ColorID, ColorName) VALUES (15, 'Teal');
