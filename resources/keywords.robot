*** Settings ***
Documentation    A resource file with test steps related to the login page.
Library          SeleniumLibrary
Resource         test-variables.robot

*** Keywords ***

#Test setup keywords
Set selenieum speed and wait times
    Set Selenium Implicit Wait    ${IMPLICIT WAIT TIME}
    Set Selenium Speed            ${DELAY TIME}

Go to the login page
    Open browser               ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

#Gherkin steps
I am on the login page
    Title Should Be    Login | Promo.com

I enter a valid email
    Input Text    id:email    ${VALID EMAIL}    

I enter a valid password
    Input Text    id:password    ${VALID PASSWORD}

I enter an invalid email
    Input Text    id:email    ${INVALID EMAIL}

I enter an invalid password
    Input Text    id:password    ${INVALID PASSWORD}

I click the '${BUTTON TEXT}' button
    Click Element    //button[text()='${BUTTON TEXT}']

I should be logged in
    Title Should Be    Login | Promo.com

I should be redirected to Create page
    Element Should Be Visible    //h1[text()='Create stand-out videos within minutes']
    Title Should Be              Create | Promo.com | Visual Content Creation Platform

I should see the 'The email or password you entered is incorrect' popup
    Element Should Be Visible    //span[text()='The email or password you entered is incorrect']

I should see the password recovery form
    Element Should Be Visible    id:email
    Element Should Be Visible    //button[text()='Send email']

I should see the sign up form
    Element Should Be Visible    id:signup-email
    Element Should Be Visible    id:signup-fullName
    Element Should Be Visible    id:signup-password