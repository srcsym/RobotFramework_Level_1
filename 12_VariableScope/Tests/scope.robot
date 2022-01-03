*** Settings ***
Resource    ../Resources/scope_resources.robot
*** Variables ***
${MY_VARIABLE} =    This is a value from script file

*** Test Cases ***
Create and log a variable
    #${my_variable} =    Set Variable    Some Information
    Log    ${MY_VARIABLE}
Access a variable
    Log    ${MY_VARIABLE}

*** Keywords ***


#CommandLine Value > Script Value > Keyword Value