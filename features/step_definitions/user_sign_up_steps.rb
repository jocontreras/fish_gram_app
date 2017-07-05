Given(/^I am on the root page$/) do
  visit root_path
end

Then(/^I select "([^"]*)" from "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^"([^"]*)" should be marked as "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on the registration page$/) do
  visit new_user_registration_path
end
