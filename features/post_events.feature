Feature: Post events
  As an administrator
  In order to keep my customers up to date with news and events in different places
  I would like to be able to create a events item.

Scenario: I create a new event post
  Given I am on the create events post page
  Then I should see "Create a new event"
  And I fill in "Title" with "Beach Party"
  And I fill in "Content" with "Enjoy your summer vacation at Boracay"
  And I click "Save"
  Then I should see "Events post created!"
