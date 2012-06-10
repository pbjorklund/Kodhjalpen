Feature: Developer signup
  As a developer, I want to register as a developer, to volunteer my coding skills for charity
  Background:
    Given That the cms is populated

  Scenario: Signing up
    Given I am on the "/developers/new" page
    When  I fill in my developer details
    Then  I should see a alert-success message
    And   I should see my email in the navigation

  Scenario: Editing my profile
    Given I am logged in as a developer
    And   I am on the edit page for a signed in user
    When  I change the "Epost" to "test@gmail.com"
    When  I fill in my password and password confirmation
    And   I click on the "Utför" button
    Then  I should see a alert-success message
    And   I should see "test@gmail.com" in the navigation
