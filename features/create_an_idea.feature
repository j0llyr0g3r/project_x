Feature: Create an Idea
  In order to realize my ideas
  As a standard user
  I want to create a new idea
  Scenario: Coming from the welcome page
    Given I am logged in
    And I am on the welcome page
    When I follow "create_idea_link"
    Then I should see the element "#create_idea_area"
    When I fill in "idea_title" with "my_idea"
    And I press "idea_submit"
    Then I should see the element "#show_idea_area"

