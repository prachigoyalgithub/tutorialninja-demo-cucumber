Feature: Product Actions on the Website

  Scenario: Verify Products are Arranged in Alphabetical Order
    Given the user is on the homepage
    When the user hovers over the "Desktops" tab and clicks
    And the user clicks on "Show All Desktops"
    And the user selects the sort order "Name: Z to A"
    Then the products should be arranged in descending alphabetical order

  Scenario Outline: Verify Product is Added to Shopping Cart Successfully
    Given the user is on the homepage
    When the user hovers over the Currency Dropdown and clicks
    And the user hovers over £Pound Sterling and clicks
    And the user hovers over the "Desktops" tab and clicks
    And the user clicks on "Show All Desktops"
    And the user selects the sort order "Name: A to Z"
    And the user selects the product "<product>"
    And the user verifies the text "<product>"
    And the user enters quantity "1" using the Select class
    And the user clicks on the "Add to Cart" button
    Then the message should be displayed: "Success: You have added “<product>” to your shopping cart!"
    And the user clicks on the link "shopping cart" displayed in the success message
    Then the page should display the text "Shopping Cart"
    And the product name should be "<product>"
    And the model should be "<model>"
    And the total should be "<price>"

    Examples:
      | product      | model | price   |
      | HTC Touch HD | 1     | £74.73  |
      | iPhone       | 11    | £75.46  |
      | iPod Classic | 20    | £74.73  |
      | MacBook      | 16    | £368.73 |
      | MacBook Air  | 17    | £736.23 |
      | Sony VAIO    | 19    | £736.23 |
