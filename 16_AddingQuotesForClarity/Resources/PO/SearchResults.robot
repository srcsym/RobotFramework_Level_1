*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SEARCH_RESULT_LINK} =    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/div[1]/h2/a
*** Keywords ***

Verify Search
       Wait Until Page Contains    results for "${SEARCH_TERM}"

Click Product Link
        Click Link    ${SEARCH_RESULT_LINK}