*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_TO_CART} =    xpath=//*[@id="add-to-cart-button"]

*** Keywords ***
Check Page Loaded
    Wait Until Page Contains  Back to results

Add to Cart
    Click Button  ${ADD_TO_CART}