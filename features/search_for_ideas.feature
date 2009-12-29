Feature: Search for ideas
  In order to join ideas
  As an interested user
  I want to search for ideas
  Scenario: Query yields results
    Given I am on the welcome page
    When I follow "Search For Ideas"
    Then I should see "Search For Ideas"
    When I fill in "What are you looking for?" with "flashmob"
    And Sphinx has indexed my query
    And I press "Find!"
    Then I should see ideas matching my search query
  Scenario: Query doesnt yields results
    Given I am on the welcome page
    When I follow "Search For Ideas"
    Then I should see "Search For Ideas"
    When I fill in "What are you looking for?" with "Some nonsense"
    And Sphinx has not indexed my query
    And I press "Find!"
    Then I should see "Search For Ideas"