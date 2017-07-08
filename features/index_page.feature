Feature: add simple information to index
  As an administrator
  In order to manage the fish app system
  I would like to be able to see important info on index page and links to important features

  Background:
    Given the following users exist
      | email           | password  | password_confirmation |
      | user@random.com | 12345678  | 12345678              |

    Scenario: Display the Main Admin Page
      Given I am logged in as "user@random.com"
      Given I am on the root page
