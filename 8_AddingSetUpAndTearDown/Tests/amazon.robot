*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Suite Setup    Insert Testing Data    #when we have steps we would like to run before all the test cases
Test Setup    Begin Web Test
Test Teardown    End Web Test
Suite Teardown    Cleanup Testing Data  #when we have steps we would like to run after all the test cases

*** Variables ***


*** Test Cases ***
User can search for product
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke

    AmazonApp.Search for Products

User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke

    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


