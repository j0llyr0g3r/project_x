Feature: Account update
  In order to update my account settings
  As a registered user
  I want to be able to edit my account settings
  Scenario: Account edit page
    Given I am logged in with first name Janice
    When I go to the edit user page
    Then I should see "Janice"
    


