Given(/^I am on the registration page$/) do
  visit new_user_registration_path
end

Given(/^I click link "([^"]*)"$/) do |link|
  click_link link
end

When(/^I click Sign up$/) do
  pending # Write code here that turns the phrase above into concrete actions
end