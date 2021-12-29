*** Settings ***
Documentation    This is some basic infor about the whole suit
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.amazon.com   gc
    Wait Until Page Contains   Hello
    Input Text    id=twotabsearchtextbox    Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
    Sleep    3s
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains   Back to results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains   Added to Cart
    Click Button  xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
    Wait Until Page Contains   Sign-In
    SLeep    1s
    Close Browser


*** Keywords ***
