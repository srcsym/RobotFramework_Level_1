*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_HEADLINE_LABEL} =    xpath=//*[@id="team"]/div/div[1]/div/h2
${TEAM_HEADLINE} =    Our Amazing Team

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element   ${TEAM_HEADLINE_LABEL}


Checking the team section headline
    ${ElementText} =    Get Text    ${TEAM_HEADLINE_LABEL}
    Should Be Equal As Strings   ${ElementText}    ${TEAM_HEADLINE}    ignore_case=True
   # Element Text Should Be  ${TEAM_HEADLINE_LABEL}    ${TEAM_HEADLINE} (This fails on Chrome (because case sensetive))
    Sleep   1s