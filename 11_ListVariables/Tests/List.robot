*** Settings ***
*** Variables ***
@{MY_VARIABLE} =    Hello this is value 1    And this is value 2    Finally this is value 3

*** Test Cases ***
Variable demonstration 1
    Log    ${MY_VARIABLE}
    Log    ${MY_VARIABLE}[0]
    Log    ${MY_VARIABLE}[1]
    log    ${MY_VARIABLE}[2]
Variable demonstration 2
    ${my_list_variable} =    Set Variable    Item 1    Item 2    Item 3
    log    ${my_list_variable}
    Log    ${my_list_variable}[0]
    Log    ${my_list_variable}[1]
    log    ${my_list_variable}[2]

*** Keywords ***
