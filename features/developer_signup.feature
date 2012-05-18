Feature: Developer signup
  As a developer, I want to sign up for the event, to volunteer my coding skills for charity

  Scenario: Signing up
    Given I am on the startpage
    When I click on "Developer signup"
    And I fill in my details
    And I click on "Sign up"
    Then I should see "You are now signed up!"


