Feature: Welcome
  In order to motivate users to explore the webside
  As a surfer
  I want to see an attractive welcome page, which allows him to quickly explore the features of project x
  Scenario: Coming from another website
    Given I am on the welcome page
    Then I should see "Create an idea"
    And I should see "Search For Ideas"
    And I should see "What is this?"
    And I should see "Get recommendations"
    And I should see "I'm feeling lucky"
