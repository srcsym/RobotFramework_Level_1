*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =    xpath=//h1
*** Keywords ***

Check Page Contains
    #Wait Until Page Contains    Sign-In
    Page Should Contain Element     ${SIGNIN_MAIN_HEADING}
    Element Text Should Be  ${SIGNIN_MAIN_HEADING}    Sign-In