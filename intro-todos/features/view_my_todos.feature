Feature: View todos I own
  In order to determine what I need to accomplish
  As a user
  I should be able to see all my todos

  Scenario: View my todos
    Given the following todos exist:
      | title      | owner          |
      | Buy milk   | me@example.com |
      | Buy eggs   | me@example.com |
      | Buy cheese | me@example.com |

    And I have signed in as "me@example.com"
    Then I should see the following todos:
      | Buy milk   |
      | Buy eggs   |
      | Buy cheese |
