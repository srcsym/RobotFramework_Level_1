*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Enter Search Term
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}
Submit Search
    Click Button  xpath=//*[@id="nav-search-submit-button"]
