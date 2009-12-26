Feature: Edit user profile
  In order to manage my user profile
  As a logged in user
  I want to edit my account settings
  Scenario: Standard edit
    Given I am logged in
    And I am on the edit user page
    When I fill in "Last name" with "Kubrick"
    And I press "Update Profile"
    Then I should see my updated profile

