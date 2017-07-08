Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

Then(/^I click "([^"]*)"$/) do |button|
  click_button button
end

Then(/^show me the page$/) do
 save_and_open_page
end

Given(/^the following user exist$/) do |table|
  table.hashes.each do |hash|
   create(:user, hash)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end
