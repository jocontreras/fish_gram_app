Feature: User sign up
  As a User
  In order to access the system
  I would like to be able to sign up

Scenario: User creates an account
  Given I am on the registration page
  Then I should see "Sign up"
  When I fill in "Email" with "user@example.com"
  And I fill in "Password" with "1234567"
  And I fill in "Password confirmation" with "1234567"
  And I click "Sign up"
  Then I should see "You have signed up successfully."
