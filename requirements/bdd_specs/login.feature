Feature: Login
as a customer
I want to be able to access my account and stay logged in
So I can view and respond to polls quickly

Scenario: Valid Credentials
Given that the client provided valid credentials
When to ask to login
Then the system should send the user to the search screen
And keep the user logged in

Scenario: Invalid Credentials
Given that the client provided invalid credentials
When to ask to login
Then the system should return an error message