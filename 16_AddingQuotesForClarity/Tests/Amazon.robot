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
${LOGIN_EMAIL} =    admin@gmail.com
${LOGIN_PASSWORD} =    myPassword1
*** Test Cases ***
Should be able to login
    AmazonApp.Login   ${LOGIN_EMAIL}   ${LOGIN_PASSWORD}

#Logged out user should able to search for products
#    AmazonApp.Search for Products
#
#Logged out user should able to view a product
#    AmazonApp.Search for Products
#    AmazonApp.Select Product from Search Results
#
#Logged out user should able to add product to cart
#    AmazonApp.Search for Products
#    AmazonApp.Select Product from Search Results
#    AmazonApp.Add Product to Cart
#
#Logged out user should able to asked to sign in to check out
#    AmazonApp.Search for Products
#    AmazonApp.Select Product from Search Results
#    AmazonApp.Add Product to Cart
#    AmazonApp.Begin Checkout



