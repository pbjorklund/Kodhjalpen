Feature: User signup
  As a user, I want to register as a user, to volunteer my coding skills for charity

  Scenario: Signing up
    Given I am on the "/developers/new" page
    When  I fill in my user details
    Then  I should see a alert-success message
    And   I should see my email in the navigation
