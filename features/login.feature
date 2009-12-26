Feature: Login
  In order to manage my ideas and involvements in other ideas
  As a not logged in user
  I want to log into my account
  Scenario: Standard user login
    Given I am on the sign up page
    And I have created an account
    When I fill in the login form with valid credentials
    And I press "Login"
    Then I should see the edit profile page

