Feature: Show my ideas
  In order to manage my ideas
  As a user with ideas
  I want to see my ideas
  Scenario: Link in header
    Given I am logged in
    And I have created ideas
    When I follow "My Ideas"
    Then I should see "Title"
    And I should see "Description"
