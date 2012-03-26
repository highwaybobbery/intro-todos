When /^I register for an account with the email "([^"]*)"$/ do |email|
  click_link "Sign up for an account"
  fill_in "Email", with: email
  click_button "Create my account"
end

Then /^I should be signed in as "([^"]*)"$/ do |email|
  page.should have_css("[data-role='user-identification']", text: email)
end

