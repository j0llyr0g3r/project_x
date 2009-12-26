Feature: Create an idea
  In order to create a movie, band or whatever
  As a user
  I want to create ideas
  Scenario: User is logged in
    Given I am logged in
    And I am on the welcome page
    When I follow "Create an idea"
    Then I should see "Title"
    And I should see "Description"
    When I fill in "Title" with "My great idea"
    And I fill in "Description" with "My description"
    And I press "Create Idea"
    Then I should see "My great idea"
  Scenario: User is not logged in
    Given I am on the welcome page
    When I follow "Create an idea"
    Then I should see "Sign up"
    When I log in
    Then I should see "Title"
    And I should see "Description"
    When I fill in "Title" with "My great idea"
    And I fill in "Description" with "My description"
    And I press "Create Idea"
    Then I should see "My great idea"
  Scenario: User does not have an account
