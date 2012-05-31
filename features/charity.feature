Feature: Charity signup
  As a charity, I want to sign up, to tell the world what I need done

  Scenario: Signing up
    Given I am on the "/charities/new" page
    When  I fill in my charity details
    Then  I should see a alert-success message
    And   I should see my email in the navigation
