*** Settings ***
Library  Selenium2Library


*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    [Documentation]  This keyword verifies Amazon home page loaded.
    wait until page contains  Your Amazon.com
