Feature: Sign up for an account
  In order to keep track of the todos I own
  As a visitor
  I should be able to create an account

  Scenario: Create an account from the homepage
    Given I am on the homepage
    When I register for an account with the email "person@example.com"
    Then I should be signed in as "person@example.com"


