*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_SECTION_LINK} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Clicking Team Section
    Click Link    ${TEAM_SECTION_LINK}
    Sleep    2s

