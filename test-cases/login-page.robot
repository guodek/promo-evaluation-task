*** Settings ***
Documentation    Test cases related to Promo.com test assignment 
...              covering selected login page funcionality
Resource         ../resources/keywords.robot
Suite Setup      Set selenieum speed and wait times
Test Setup       Go to the login page
Test Teardown    Close Browser


*** Test Cases ***

Scenario: User can log in with valid credentials
    Given I am on the login page
    When I enter a valid email
    And I enter a valid password
    And I click the 'Log in' button
    Then I should be redirected to Create page

Scenario: User can't log in with invalid password
    Given I am on the login page
    When I enter a valid email
    And I enter an invalid password
    And I click the 'Log in' button
    Then I should see the 'The email or password you entered is incorrect' popup

Scenario: User can't log in with invalid email
    Given I am on the login page
    When I enter an invalid email
    And I enter a valid password
    And I click the 'Log in' button
    Then I should see the 'The email or password you entered is incorrect' popup

Scenario: User can navigate to password recovery form
    Given I am on the login page
    When I click the 'Forgot password?' button
    Then I should see the password recovery form

Scenario: User can navigate to sign-up form
    Given I am on the login page
    When I click the 'Sign up' button
    Then I should see the sign up form