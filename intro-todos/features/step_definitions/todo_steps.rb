When /^I create a todo titled "([^"]*)"$/ do |todo_title|
  click_link "Add a todo"
  fill_in "Title", with: todo_title
  click_button "Create"
end

Then /^"([^"]*)" should be in my list of things to do$/ do |todo_title|
  within "ul.todos" do
    page.should have_css("li", text: todo_title)
  end
end

