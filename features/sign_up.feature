Feature: User Signup
  In order to sign up
  As a new user
  I want to create a user profile
  Scenario: Sign up page
    Given I am on the sign up page
    Then I should see the element "#sign_up_area"
    And I should see the element "#login_area"
    When I fill in "user_username" with "test_user"
    And I fill in "user_email" with "test@test.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "user_submit"
    Then I should see the element "#edit_profile_area"

