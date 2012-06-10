Feature: Information

  As a visitor, I want to see information about the event, to know what is going on

  Background:
    Given That the cms is populated

  Scenario: Visiting the startpage
    Given I am on the startpage
    Then I should see "Hjälp andra göra gott"

  Scenario: Viewing developers that have signed up
    Given there are developers in the database
    And I am on the "/developers" page
    Then I should see a list of developers

  Scenario: Viewing charities that have signed up
    Given there are charities in the database
    And I am on the "/charities" page
    Then I should see a list of charities

