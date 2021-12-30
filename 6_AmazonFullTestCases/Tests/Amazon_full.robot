*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***

Logout User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser   http://www.amazon.com  gc
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
    Close Browser

Logout User can view a product
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  gc
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains  Back to results
    Close Browser

Logout User can add product to cart
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  gc
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains  Back to results
    Click Button  xpath=//*[@id="add-to-cart-button"]
    Close Browser

Logout User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  gc
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains  Back to results
    Click Button  xpath=//*[@id="add-to-cart-button"]
    Wait Until Page Contains  Added to Cart
    Click Link  xpath=//*[@id="nav-cart"]
    Wait Until Page Contains  Shopping Cart
    Click Button  xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
    Wait Until Page Contains  Sign-In
    Close Browser
