Feature: Create Todos
  In order to track things I need to do
  As a user
  I should be able to create a new todo

  Scenario: Create a todo
    Given I have signed in
    When I create a todo titled "buy some milk on my way home"
    Then "buy some milk on my way home" should be in my list of things to do

  Scenario: Create an invalid todo
    Given I have signed in
    When I create a todo wihtout a title
    Then I sould have no todos
    And I should see an error message telling me that title is required
