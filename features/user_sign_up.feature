Feature: User Sign Up
  As a user
  In order to access the admin account
  I should be able to sign up

Scenario: I create an account
  Given I am on the index page
  And I click link "Sign up"
  Then I should see "Sign up"
  And I fill in "Email" with "user@random.com"
  And I fill in "Password" with "12345678"
  And I fill in "Password confirmation" with "12345678"
  And I click "Sign up"
  Then I should see "You have signed up successfully."
