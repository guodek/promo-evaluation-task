*** Settings ***
Documentation
...    A resource file with variables needed for proper test execution.
...    Before running the test suite be sure to provide VALID EMAIL
...    and VALID PASSWORD variables (the ones I used during the assignment can be found in the PDF) 

*** Variables ***
${IMPLICIT WAIT TIME}    10
${DELAY TIME}            1
${BROWSER}               Chrome
${URL}                   promo.com
${LOGIN URL}             https://${URL}/login
${VALID EMAIL}           
${VALID PASSWORD}        
${INVALID EMAIL}         fakeemail@mail.com
${INVALID PASSWORD}      InvalidPW123