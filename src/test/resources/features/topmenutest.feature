Feature: User Navigation on the Website

  Scenario: User should navigate to the Desktops page successfully
    Given the user is on the homepage
    When the user hovers over the "Desktops" tab and clicks
    And the user selects the menu "Show All Desktops"
    Then the page should display the text 'Desktops'

  Scenario: User should navigate to the Laptops & Notebooks page successfully
    Given the user is on the homepage
    When the user hovers over the "Laptops & Notebooks" tab and clicks
    And the user selects the menu "Show All Laptops & Notebooks"
    Then the page should display the text 'Laptops & Notebooks'

  Scenario: User should navigate to the Components page successfully
    Given the user is on the homepage
    When the user hovers over the "Components" tab and clicks
    And the user selects the menu "Show All Components"
    Then the page should display the text 'Components'
