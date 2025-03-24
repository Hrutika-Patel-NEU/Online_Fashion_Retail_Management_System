BEGIN
   -- Cleanup existing user records
   DELETE FROM Users;
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('Users table cleaned successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error during Users table cleanup: ' || SQLERRM);
END;
/


INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (1, 'Riya', 'Kumar', 'riya.kumar@example.com', 'hashed_password_2', '980-111-2234', 'Admin', 5);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (2, 'Sara', 'Ali', 'sara.ali@example.com', 'hashed_password_8', '980-111-2240', 'Admin', 5);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (3, 'Amit', 'Shah', 'amit.shah@example.com', 'hashed_password_1', '980-111-2233', 'Customer', 1);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (4, 'Arav', 'Singh', 'arav.singh@example.com', 'hashed_password_3', '980-111-2235', 'Customer', 2);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (5, 'Tara', 'Mehta', 'tara.mehta@example.com', 'hashed_password_4', '980-111-2236', 'Customer', 3);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (6, 'Neil', 'Patel', 'neil.patel@example.com', 'hashed_password_5', '980-111-2237', 'Customer', 4);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (7, 'Anvi', 'Roy', 'anvi.roy@example.com', 'hashed_password_6', '980-111-2238', 'Customer', 2);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (8, 'Raj', 'Joshi', 'raj.joshi@example.com', 'hashed_password_7', '980-111-2239', 'Customer', 1);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (9, 'Kabir', 'Das', 'kabir.das@example.com', 'hashed_password_9', '980-111-2241', 'Customer', 3);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (10, 'Isha', 'Gupta', 'isha.gupta@example.com', 'hashed_password_10', '980-111-2242', 'Customer', 4);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (11, 'Aditya', 'Verma', 'aditya.verma@example.com', 'hashed_password_11', '980-111-2243', 'Admin', 5);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (12, 'Meera', 'Chopra', 'meera.chopra@example.com', 'hashed_password_12', '980-111-2244', 'Customer', 2);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (13, 'Karan', 'Malhotra', 'karan.malhotra@example.com', 'hashed_password_13', '980-111-2245', 'Customer', 1);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (14, 'Jaya', 'Sharma', 'jaya.sharma@example.com', 'hashed_password_14', '980-111-2246', 'Customer', 3);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (15, 'Nikhil', 'Kapoor', 'nikhil.kapoor@example.com', 'hashed_password_15', '980-111-2247', 'Customer', 4);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (16, 'Simran', 'Bagga', 'simran.bagga@example.com', 'hashed_password_16', '980-111-2248', 'Customer', 1);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (17, 'Vivek', 'Goyal', 'vivek.goyal@example.com', 'hashed_password_17', '980-111-2249', 'Customer', 2);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (18, 'Priya', 'Narang', 'priya.narang@example.com', 'hashed_password_18', '980-111-2250', 'Customer', 3);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (19, 'Sohail', 'Khan', 'sohail.khan@example.com', 'hashed_password_19', '980-111-2251', 'Customer', 4);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (20, 'Anjali', 'Mishra', 'anjali.mishra@example.com', 'hashed_password_20', '980-111-2252', 'Admin', 5);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (21, 'Rohit', 'Naidu', 'rohit.naidu@example.com', 'hashed_password_21', '980-111-2253', 'Customer', 1);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (22, 'Naina', 'Agarwal', 'naina.agarwal@example.com', 'hashed_password_22', '980-111-2254', 'Customer', 2);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (23, 'Vikas', 'Dutta', 'vikas.dutta@example.com', 'hashed_password_23', '980-111-2255', 'Customer', 3);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (24, 'Deepika', 'Roy', 'deepika.roy@example.com', 'hashed_password_24', '980-111-2256', 'Customer', 4);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (25, 'Harsh', 'Patel', 'harsh.patel@example.com', 'hashed_password_25', '980-111-2257', 'Customer', 1);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (26, 'Geeta', 'Bisht', 'geeta.bisht@example.com', 'hashed_password_26', '980-111-2258', 'Customer', 2);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (27, 'Pankaj', 'Tripathi', 'pankaj.tripathi@example.com', 'hashed_password_27', '980-111-2259', 'Customer', 3);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (28, 'Manisha', 'Koirala', 'manisha.koirala@example.com', 'hashed_password_28', '980-111-2260', 'Customer', 4);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (29, 'Aryan', 'Khan', 'aryan.khan@example.com', 'hashed_password_29', '980-111-2261', 'Admin', 5);
INSERT INTO Users (UserID, FirstName, LastName, Email, PasswordHash, PhoneNumber, Role, UserTierID) VALUES (30, 'Tanya', 'Seth', 'tanya.seth@example.com', 'hashed_password_30', '980-111-2262', 'Customer', 1);
