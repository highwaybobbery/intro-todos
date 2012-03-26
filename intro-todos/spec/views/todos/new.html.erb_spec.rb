require "spec_helper"

describe "todos/new.html.erb" do
  it "does not display errors unlesss they esist" do
    @todo = Todo.new
    render template: "todos/new"
    rendered.should_not have_css("ul.errors")
  end
end

