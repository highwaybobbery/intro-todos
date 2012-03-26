Given /^I have signed in as "([^"]*)"$/ do |email|
  steps %{
    Given I am on the homepage
    When I register for an account with the email "#{email}"
  }
end

Given /^I sign out$/ do
  click_link "Sign out"
end

Then /^I should be signed out$/ do
  page.should_not have_css("[data-role='user-identification']")
  page.should_not have_link("Sign out")
end

When /^I register for an account with the email "([^"]*)"$/ do |email|
  click_link "Sign up for an account"
  fill_in "Email", with: email
  click_button "Create my account"
end

Then /^I should be signed in as "([^"]*)"$/ do |email|
  page.should have_css("[data-role='user-identification']", text: email)
end

Given /^I have signed in$/ do
  step %{I have signed in as "person@example.com"}
end

