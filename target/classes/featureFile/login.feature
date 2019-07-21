Feature: Login to In-App

Scenario: Login into In-App
Given Launch App
When enter username
And enter password
Then login

Scenario: Input validations on username
Given Username
When username is blank
Then show "Username shouldn't be blank"

Scenario: Input validations on password
Given Password
When password is blank
Then show "Password shouldn't be blank"

Scenario: username and password mismatch
Given username and password
When username and password doesn't match
Then show "Incorrect username or password"