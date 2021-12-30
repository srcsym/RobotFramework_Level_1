*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke

    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout
    End Web Test


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  gc
    Maximize Browser Window

Search for Products
    Go To    http://www.amazon.com
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
Select Product from Search Results
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains  Back to results

Add Product to Cart
    Click Button  xpath=//*[@id="add-to-cart-button"]
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Link  xpath=//*[@id="nav-cart"]
    Wait Until Page Contains  Shopping Cart
    Click Button  xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
    Wait Until Page Contains  Sign-In
End Web Test
    Close Browser