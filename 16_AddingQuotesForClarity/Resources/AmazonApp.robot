*** Settings ***
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot

*** Keywords ***
Login
    [Arguments]    ${Email}    ${Password}
    SignIn.Login With Valid Credentials     ${Email}    ${Password}

Login with Invalid Credentials
    SignIn.Fill "Email" Field     admin@gmail.com
    SignIn.Fill "Password" Field    badPasword
    SignIn.Click Sign In Button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Enter Search Term
    TopNav.Submit Search
    SearchResults.Verify Search

Select Product from Search Results

    SearchResults.Click Product Link
    Product.Check Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed
    Cart.Check Page
    Cart.Clicking Checkout Button
    SignIn.Check Page Contains
