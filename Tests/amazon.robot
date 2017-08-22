*** Settings ***
Documentation  Basic browser test case
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Configure Test Suite
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleaning Testing Data


*** Variables ***
${BROWSER} =  ff
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Lamborghini Gallardo


*** Test Cases ***
Logged out user should sign in to checkout
    [Documentation]  This test verifies user should sign into account to checkout
    [Tags]  Current Test
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin checkout
