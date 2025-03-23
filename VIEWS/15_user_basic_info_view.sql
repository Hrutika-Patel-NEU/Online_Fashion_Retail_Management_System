-- View 15: User Basic Info View
CREATE OR REPLACE VIEW user_basic_info_view AS
SELECT 
    UserID,
    FirstName,
    LastName,
    Email,
    PhoneNumber,
    Role
FROM Users;
