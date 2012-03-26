Feature: View the homepage
  In order to learn about the todo application
  As a visitor 
  I should be able to see information about the application
  And how I will benefit by using it

  Scenario: View the product name
    When I go to the homepage
    Then I should see the product name in the header

  Scenario: View the product description
    When I go to the homepage
    Then I should see the product description

  Scenario: Be able to sign up
    When I go to the homepage
    Then I should be able to sign up for an account



    
