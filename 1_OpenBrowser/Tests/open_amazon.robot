*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***
*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]  Smoke
    Open Browser    https://www.amazon.com    gc
    Sleep    3s
    Close Browser

*** Keywords ***
