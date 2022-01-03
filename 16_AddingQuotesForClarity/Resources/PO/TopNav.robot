*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =    id=twotabsearchtextbox
${TAPNAV_SEARCH_BUTTON} =    xpath=//*[@id="nav-search-submit-button"]

*** Keywords ***

Enter Search Term
    Input Text  ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}
Submit Search
    Click Button  ${TAPNAV_SEARCH_BUTTON}
