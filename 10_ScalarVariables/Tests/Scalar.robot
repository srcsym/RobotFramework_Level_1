*** Settings ***
*** Variables ***
${MY_VARIABLE} =   Hello There!
*** Test Cases ***
Set a variable in the test case
    [Tags]    Current
    ${my_new_variable} =    Set Variable    The new variable in the test case
    Log    ${my_new_variable}

Variable demonstration 1
    Log    ${MY_VARIABLE}

Variable demonstration 2
    Log    ${MY_VARIABLE}


*** Keywords ***
