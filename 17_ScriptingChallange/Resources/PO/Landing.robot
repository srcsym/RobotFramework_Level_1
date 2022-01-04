*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LANDING_NAV_ELEMENT} =    id=mainNav
*** Keywords ***
Open Page
    Go To   ${URL}
Verify Page Loaded
    wait until page contains element    ${LANDING_NAV_ELEMENT}