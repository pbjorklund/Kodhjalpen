# encoding: utf-8
Feature: Charity signup
  As a charity, I want to sign up, to tell the world what I need done

  Background:
    Given That the cms is populated

  Scenario: Signing up
    Given I am on the "/charities/new" page
    When  I fill in my charity details
    Then  I should see a alert-success message
    And   I should see "hjalparna@gmail.com" in the navigation

  Scenario: Editing my profile
    Given I am logged in as a charity
    And   I am on the edit page for a signed in user
    When  I change the "Epost" to "test@rfsu.se"
    When  I fill in my password and password confirmation
    And   I click on the "Utför" button
    Then  I should see a alert-success message
    And   I should see "test@rfsu.se" in the navigation
