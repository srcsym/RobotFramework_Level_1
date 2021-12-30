*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verify Search
       Wait Until Page Contains    results for "Ferrari 458"

Click Product Link
        Click Link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/div[1]/h2/a