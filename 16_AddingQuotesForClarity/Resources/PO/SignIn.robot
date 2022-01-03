*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =    xpath=//h1
*** Keywords ***

Check Page Contains
    #Wait Until Page Contains    Sign-In
    Page Should Contain Element     ${SIGNIN_MAIN_HEADING}
    Element Text Should Be  ${SIGNIN_MAIN_HEADING}    Sign-In

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    Fill "Email" Field     ${Email}
    Fill "Password" Field     ${Password}
    Click Sign In Button



Fill "Email" Field
    [Arguments]    ${Email}
    Log    Fill "Email" Field with ${Email}

Fill "Password" Field
    [Arguments]  ${Password}
    Log    Fill "Password" Field with ${Password}
Click Sign In Button
    Log     Clicking Sign In Button