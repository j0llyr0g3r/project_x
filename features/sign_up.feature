Feature: Sign up
  In order to be able to fully use project_x
  As a new, unregistered user
  I want to create a user account
  Scenario: Standard user create
    Given I am on the sign up page
    When I fill in correct sign up data
    And I press "Create Account"
    Then I should see the edit profile page

