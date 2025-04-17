-- View 8: User Saved Addresses View
CREATE OR REPLACE VIEW user_saved_addresses_view AS
SELECT 
    u.UserID,
    u.FirstName || ' ' || u.LastName AS CustomerName,
    a.AddressLine1,
    a.AddressLine2,
    a.City,
    a.State,
    a.Country,
    a.ZipCode
FROM Address a
JOIN Users u ON a.UserID = u.UserID;
