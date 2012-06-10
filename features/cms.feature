Feature: Content management
  As a site owner, I only want admins to be able to update the pages, to avoid hacking
  Background:
    Given That the cms is populated

  Scenario: Accessing the CMS as an admin
    Given I am logged in as an admin
    When  I visit "/cms-admin"
    Then  I should see "ComfortableMexicanSofa"

  Scenario: Accessing the CMS as a developer
    Given I am logged in as a developer
    When  I visit "/cms-admin"
    Then  I should see "Du är inte administratör"

  Scenario: Accessing the CMS as a charity
    Given I am logged in as a charity
    When  I visit "/cms-admin"
    Then  I should see "Du är inte administratör"
