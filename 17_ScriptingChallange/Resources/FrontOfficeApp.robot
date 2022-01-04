*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/Team.robot


*** Keywords ***
Go to Landing Page
    Landing.Open Page
    Landing.Verify Page Loaded

Go to Team Section
    TopNav.Clicking Team Section
    Team.Verify Page Loaded

Check If The Team Section Contains The Headline
    Team.Checking the team section headline