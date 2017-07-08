Feature: User Sign Up
  As a user
  In order to access the admin account
  I should be able to sign up

Scenario: I create an account
  Given I am on the root page
  Then I click link "Sign up" 
  And I fill in "Email" with "user@random.com"
  And I select "admin" from "Role"
  And I fill in "Password" with "12345678"
  And I fill in "Password confirmation" with "12345678"
  And I click "Sign up"
  And I should see "You have signed up successfully."
  Then "user@random.com" should be marked as "admin"
