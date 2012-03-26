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

When /^I create a todo wihtout a title$/ do
  step %{I create a todo titled ""}
end

Then /^I sould have no todos$/ do
  page.should_not have_css("ul.todos")
end

Then /^I should see an error message telling me that title is required$/ do
  within "ul.errors" do
    page.should have_css("li", text: /Title/)
  end
end

