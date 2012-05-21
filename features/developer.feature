Feature: Developer signup
  As a developer, I want to register as a developer, to volunteer my coding skills for charity

  Scenario: Signing up
    Given I am on the startpage
    When  I click on "Developer signup"
    And   I fill in my details
    Then  I should see a alert-success message
    And   I should see my name in the navigation
