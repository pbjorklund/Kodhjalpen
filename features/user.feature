Feature: User signup
  As a user, I want to register as a user, to volunteer my coding skills for charity

  Scenario: Signing up
    Given I am on the startpage
    When  I click on "User signup"
    And   I fill in my details
    Then  I should see a alert-success message
    And   I should see my email in the navigation
