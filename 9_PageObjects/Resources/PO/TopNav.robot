*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Enter Search Term
    Input Text  id=twotabsearchtextbox  Ferrari 458
Submit Search
    Click Button  xpath=//*[@id="nav-search-submit-button"]
