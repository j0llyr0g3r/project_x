Feature: Logout
  In order to use project x on other computers
  As a logged in user
  I want to log out of my account
  Scenario: Standard user logout
    Given I am logged in
    When I follow "Logout"
    Then I should see "What is this?"

