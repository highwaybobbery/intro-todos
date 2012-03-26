Given /^I have logged in as "([^"]*)"$/ do |email|
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

