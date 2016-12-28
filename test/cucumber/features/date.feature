Feature: Test all date sweetness

Scenario: Sweetening my dates
    Given that I have a boring test
    And I need to use some dates
    And I have today's date
    When I use step 10 days ago
    Then the date should be today's date minus ten days ago
