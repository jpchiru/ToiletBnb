Feature: Register to In-App

# Email field

Scenario: Enter email
Given Launch App
When enter email
Then "Email should be accepted"

Scenario: Leave email blank
Given Launch App
When email field is blank
Then "Blank value should be accepted"

# Name field

Scenario: Enter name with less than '30' characters
Given Launch App
When enter name
Then "Username should be accepted"

Scenario: Enter name with more than '30' characters
Given Launch App
When enter name
Then "Username should contain a maximum of 30 characters"

Scenario: Leave name blank
Given Launch App
When name field is blank
Then "Username should not be blank"

# Password field

Scenario: Enter password with only Alphabets and less than '12' characters length
Given Launch App
When enter password with only alphabets
Then "Password should contain atleast one special character(@, #, $, -), one Capital letter"

Scenario: Enter password with only alphabets and special characters and less than '12' characters length
Given Launch App
When enter password with only alphabets and special characters
Then "Password should contain atleast one special character(@, #, $, -), one Capital letter"

Scenario: Enter password with alphanumeric characters and less than '12' characters length
Given Launch App
When enter password with alphanumeric characters
Then "Password should be accepted"

Scenario: Enter password with alphanumeric characters and greater than '12' characters length
Given Launch App
When enter password with alphanumeric characters
Then "Password should contain a maximum of 12 characters length"

Scenario: Leave password blank
Given Launch App
When password field is blank
Then "password should not be blank"

# Confirm password field

Scenario: Enter confirm password with only Alphabets and less than '12' characters length
Given Launch App
When enter confirm password with only alphabets
Then "confirm password should contain atleast one special character(@, #, $, -), one Capital letter"

Scenario: Enter password with only alphabets and special characters and less than '12' characters length
Given Launch App
When enter confirm password with only alphabets and special characters
Then "confirm password should contain atleast one special character(@, #, $, -), one Capital letter"

Scenario: Enter password with alphanumeric characters and less than '12' characters length
Given Launch App
When enter confirm password with alphanumeric characters
Then "confirm password should be accepted"

Scenario: Enter confirm password with alphanumeric characters and greater than '12' characters length
Given Launch App
When enter confirm password with alphanumeric characters
Then "confirm password should contain a maximum of 12 characters length"

Scenario: Leave confirm password blank
Given Launch App
When confirm password field is blank
Then "confirm password should not be blank"

# Matching password field

Scenario: Enter matching password and confirm password
Given Launch App
When enter matching password and confirm password with alphanumeric characters
Then "password and confirm password are matched"

Scenario: Enter mismatching password and confirm password
Given Launch App
When enter mismatching password and confirm password with alphanumeric characters
Then "password and confirm password are not matched"

# Mobile field

Scenario: Enter valid mobile number
Given Launch App
When enter mobile number of '10' digits
Then "Mobile number should be accepted"

Scenario: Enter invalid mobile number
Given Launch App
When enter mobile number of more than '10' digits
Then "Mobile number should be a maximum of 10 digits"

Scenario: Enter mobile number with the combination of alphabets and special characters
Given Launch App
When enter mobile number with the combination of alphabets and special characters
Then "Mobile number should contain only numeric values"

# Gender field

Scenario: Select Male Gender
Given Launch App
When Select Male from the gender drop down
Then "Gender should be selected with Male value"

Scenario: Select Female Gender
Given Launch App
When Select Female from the gender drop down
Then "Gender should be selected with Female value"

Scenario: Select Doesn't want to answer
Given Launch App
When Select Doesn't want to answer from the gender drop down
Then "Gender should be selected with Doesn't want to answer value"

Scenario: Select Gender blank
Given Launch App
When Leave gender field blank
Then "Gender should accept blank value"

# Successful registration

Scenario: Successful registration with all the mandatory fields
Given Launch App
When enter name
When enter password
When enter confirm password
Then "User should be registered successfully"

Scenario: Successful registration with all the fields
Given Launch App
When enter email
When enter name
When enter password
When enter confirm password
When enter mobile
When select gender
Then "User should be registered successfully"

# Failed registration

Scenario: Failed registration
Given Launch App
When leave name blank
When enter password
When enter confirm password
When leave mobile blank
Then "name and mobile should not be blank"






























