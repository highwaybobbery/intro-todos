Feature: View the homepage
  In order to learn about the todo application
  As a visitor 
  I should be able to see information about the application
  And how I will benefit by using it

  Scenario: View information about the product
    When I go to the homepage
    Then I should see the product name
    And  I should see the product description
    And  I should be able to begin the registration process
