BEGIN
   -- Delete all size option records
   DELETE FROM SizeOptions;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('SizeOptions table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during SizeOptions table cleanup: ' || SQLERRM);
END;
/


INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(1, 'XS', 'Extra Small - Typically for chest size 32-34 inches');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(2, 'S', 'Small - Typically for chest size 35-37 inches');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(3, 'M', 'Medium - Typically for chest size 38-40 inches');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(4, 'L', 'Large - Typically for chest size 41-43 inches');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(5, 'XL', 'Extra Large - Typically for chest size 44-46 inches');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(6, 'XXL', 'Double Extra Large - Typically for chest size 47-49 inches');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(7, '3XL', 'Triple Extra Large - Typically for chest size 50-52 inches');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(8, 'Free Size', 'One size fits most; commonly used for accessories or oversized items');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(9, 'Kids-S', 'Kids Small - Usually ages 4-6');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(10, 'Kids-M', 'Kids Medium - Usually ages 7-9');

INSERT INTO SizeOptions (SizeID, SizeName, SizeDescription) VALUES 
(11, 'Kids-L', 'Kids Large - Usually ages 10-12');
