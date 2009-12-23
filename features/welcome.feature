Feature: Welcome page
  In order to begin from the start
  As a surfer
  I want to see the welcome page
  Scenario: Start page
    Given I am on the welcome index page
    Then I should see the element "#static_user_account"
    And I should see the element "#search_ideas_area"
    And I should see the element "#create_ideas_area"
    And I should see the element "#what_is_this_area"
    And I should see the element "#search_random_area"
    And I should see the element "#recommendations_area"
