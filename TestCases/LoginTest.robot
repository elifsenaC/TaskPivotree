*** Settings ***
Library     SeleniumLibrary

Suite Setup   Open the browser
Suite Teardown  close browser
Test Setup   Go to login page
Resource  ../Resources/LoginKeywords.robot

*** Test Cases ***
LoginTest
    Enter email and password
    Click signIn
    Verify successfull login