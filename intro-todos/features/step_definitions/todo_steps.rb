When /^I create a todo titled "([^"]*)"$/ do |todo_title|
  click_link "Add a todo"
  fill_in "Title", with: todo_title
  click_button "Create"
end

Then /^"([^"]*)" should be in my list of things to do$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

