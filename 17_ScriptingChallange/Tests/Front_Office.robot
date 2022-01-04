*** Settings ***
Documentation   Talk about what this suite of test does
Resource    ../Resources/Common.robot
Resource    ../Resources/FrontOfficeApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =    gc
${URL} =   https://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
The user should be able to access "Team" page
    [Documentation]     This is Test 1
    [Tags]  Test 1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to Team Section


The user should be able to review "Team" headline
    [Documentation]     This is Test 2
    [Tags]  Test 2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to Team Section
    FrontOfficeApp.Check If The Team Section Contains The Headline

*** Keywords ***
