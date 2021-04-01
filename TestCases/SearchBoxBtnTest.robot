*** Settings ***
Library    SeleniumLibrary

Suite Setup  Open the browser
Suite Teardown  close browser
Resource  ../Resources/SearchBoxBtnKeywords.robot

*** Test Cases ***
SearchTest
    Search product  dress
    Verify search result
