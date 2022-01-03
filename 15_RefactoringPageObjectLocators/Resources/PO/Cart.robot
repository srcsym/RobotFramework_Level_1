*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAV_CART_LINK} =    xpath=//*[@id="nav-cart"]
${PROCEED_TO_CHECKOUT} =    xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
*** Keywords ***

Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed
    Click Link  ${NAV_CART_LINK}

Check Page
    Wait Until Page Contains  Shopping Cart

Clicking Checkout Button
    Click Button  ${PROCEED_TO_CHECKOUT}