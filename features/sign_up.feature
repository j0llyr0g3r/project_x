Feature: User Signup
  In order to sign up
  As a new user
  I want to create a user profile
  Scenario: Sign up page
    Given I am on the sign up page
    Then I should see the element "#static_sign_up_or_register_area"
    And I should see the element "#search_ideas_area"

