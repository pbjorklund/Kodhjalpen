Feature: Information

  As a visitor, I want to see information about the event, to know what is going on

  Scenario: Visiting the startpage
    Given I am on the startpage
    Then I should see "Kodhjälpen är en samling av programmerare, designers och andra IT-intresserade människor som tillsammans vill göra nytta för lokal välgörenhet"

  Scenario Outline: Finding out more 
    Given I am on the startpage
    Then I should see <link>

    Examples:
      | link            |
      | "Om kodhjälpen" |
      | "Eventet"       |
