Feature: User logout
  In order to prevent identity theft
  As a logged user
  I want to logout
  Scenario: Standard Logout Process
    Given I am logged in
    When I follow "logout_link"
    Then I should see the element "#search_ideas_area"