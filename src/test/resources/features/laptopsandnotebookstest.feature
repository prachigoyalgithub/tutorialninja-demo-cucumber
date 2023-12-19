Feature: Product Actions and Order Placement

  Scenario: Verify Products Price Display High to Low Successfully
    Given the user is on the homepage
    When the user hovers over the "Laptops & Notebooks" tab and clicks
    And the user clicks on "Show All Laptops & Notebooks"
    And the user selects the sort order "Price (High > Low)"
    Then the product prices should be arranged in High to Low order

  Scenario: Verify that User Places an Order Successfully
    Given the user is on the homepage
    When the user hovers over the "Laptops & Notebooks" tab and clicks
    And the user clicks on "Show All Laptops & Notebooks"
    And the user selects the sort order "Price (High > Low)"
    And the user selects the product "MacBook"
    And the user verifies the text "MacBook"
    And the user clicks on the 'Add To Cart' button
    Then the message should be displayed: "Success: You have added MacBook to your shopping cart!"
    And the user clicks on the link "shopping cart" displayed in the success message
    Then the page should display the text "Shopping Cart"
    And the product name should be "MacBook"
    And the user changes quantity to "2"
    And the user clicks on the "Update" button
    Then the message should be displayed: "Success: You have modified your shopping cart!"
    And the total should be £737.45
    And the user clicks on the "Checkout" button
    Then the page should display the text "Checkout"
    And the text should be "New Customer"
    And the user clicks on the "Guest Checkout" radio button
    And the user clicks on the "Continue" button
    And the user fills the mandatory fields
    And the user clicks on the "Continue" button
    And the user adds comments about the order into the text area
    And the user checks the Terms & Conditions checkbox
    And the user clicks on the "Continue" button
    Then the message should be displayed: "Warning: Payment method required!"
