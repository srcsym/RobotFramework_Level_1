*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Variables ***
${BROWSER} =    gc
${START_URL} =    https://www.amazon.com
${SEARCH_TERM} =    Ferrari 458
*** Test Cases ***

User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke

    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


