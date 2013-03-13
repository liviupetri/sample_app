Feature: Signing in

Scenario: Unsuccessful signin
Given a user visits the signin page
When he submits invalid signin information
Then he should see an error message

Scenario: Sucessful signin
Given a user visits the signin page
And the suer has an account
When he submits valid signin information
Then he should see his profile page
And he should see a signout link