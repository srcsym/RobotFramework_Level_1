*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed
    Click Link  xpath=//*[@id="nav-cart"]

Check Page
    Wait Until Page Contains  Shopping Cart

Clicking Checkout Button
    Click Button  xpath=//*[@id="sc-buy-box-ptc-button"]/span/input