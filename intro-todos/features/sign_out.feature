Feature: Sign out fo the application
  In order to prevent unauthorized access to my todos
  As a user
  I should be able to sign out of the application

  Scenario: Sign out
    Given I have logged in as "person@example.com"
    And I sign out
    Then I should be signed out
