Feature: User Account Management

  Scenario: Verify User Should Navigate to Register Page Successfully
    When the user clicks on the My Account Link
    And the user calls the method "selectMyAccountOptions" with the parameter "Register"
    Then the page should display the text "Register Account"

  Scenario: Verify User Should Navigate to Login Page Successfully
    When the user clicks on the My Account Link
    And the user calls the method "selectMyAccountOptions" with the parameter "Login"
    Then the page should display the text "Returning Customer"

  Scenario: Verify That User Registers Account Successfully
    When the user clicks on the My Account Link
    And the user calls the method "selectMyAccountOptions" with the parameter "Register"
    And the user enters First Name
    And the user enters Last Name
    And the user enters Email
    And the user enters Telephone
    And the user enters Password
    And the user enters Password Confirm
    And the user selects Subscribe Yes radio button
    And the user clicks on the Privacy Policy checkbox
    And the user clicks on the Continue button
    Then the message should be displayed: "Your Account Has Been Created!"
    And the user clicks on the Continue button
    And the user clicks on the My Account Link
    And the user calls the method "selectMyAccountOptions" with the parameter "Logout"
    Then the page should display the text "Account Logout"
    And the user clicks on the Continue button

  Scenario: Verify That User Should Login And Logout Successfully
    When the user clicks on the My Account Link
    And the user calls the method "selectMyAccountOptions" with the parameter "Login"
    And the user enters Email address
    And the user enters Last Name
    And the user enters Password
    And the user clicks on the Login button
    Then the text should be displayed: "My Account"
    And the user clicks on the My Account Link
    And the user calls the method "selectMyAccountOptions" with the parameter "Logout"
    Then the page should display the text "Account Logout"
    And the user clicks on the Continue button
