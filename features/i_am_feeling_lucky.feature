Feature: I am feeling lucky search
  In order to have fun browsing ideas randomly
  As a surfer
  I want to be able to browse ideas randomly
  Scenario: First time visitor
    Given I am on the welcome page
    When I follow "I'm feeling lucky"
    Then I should see a table with ideas from other users

