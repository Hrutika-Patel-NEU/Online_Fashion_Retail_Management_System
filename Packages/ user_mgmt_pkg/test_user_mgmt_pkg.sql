-- Enable DBMS output
SET SERVEROUTPUT ON;

-- Step 1: Register a completely NEW user
BEGIN
  user_mgmt_pkg.sp_register_user(
    p_firstname     => 'Karan',
    p_lastname      => 'Singh',
    p_email         => 'karan.singh.unique@example.com', -- New unique email
    p_phonenumber   => '9999911111',                      -- New unique phone
    p_passwordhash  => 'secure_hash_karan',
    p_role          => 'Customer'
  );
END;
/

-- Step 2: Get USERID from registered user
SELECT USERID FROM USERS WHERE EMAIL = 'karan.singh.unique@example.com';

-- Assume result is USERID = 1009 (update the next steps accordingly)

-- Step 3: Update user details
BEGIN
  user_mgmt_pkg.sp_update_user(
    p_userid        => 1009,  -- Replace with actual value if different
    p_firstname     => 'Karan',
    p_lastname      => 'Singh Updated',
    p_phonenumber   => '9999922222'
  );
END;
/

-- Step 4: Add address for the user
BEGIN
  user_mgmt_pkg.sp_add_address(
    p_userid        => 1009,  -- Must match the correct USERID
    p_addressline1  => 'Plot No. 42',
    p_addressline2  => 'Sector 8',
    p_zipcode       => '110011',
    p_city          => 'New Delhi',
    p_state         => 'Delhi',
    p_country       => 'India'
  );
END;
/
