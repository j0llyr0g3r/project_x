Feature: User login
  In order to manage my projects
  As a registered user
  I want to login
  Scenario: Standard Login Process
    Given I have created a user account
    When I go to the sign up page
    And I log in with valid credentials
    Then I should see the element "#edit_profile_area"    