*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  gc
    Maximize Browser Window

End Web Test
    Close Browser

Insert Testing Data
    Log    I am setting up the test data...

Cleanup Testing Data
    Log    I am cleaning up the test data...