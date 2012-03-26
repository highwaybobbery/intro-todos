When /^I go to the homepage$/ do
  visit "/"
end

Then /^I should see the product name$/ do
  page.should have_css("h1", text: "Welcome to Do It TDD")
end

Then /^I should see the product description$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be able to sign up for an account$/ do
  pending # express the regexp above with the code you wish you had
end

