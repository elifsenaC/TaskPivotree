*** Settings ***
Library     SeleniumLibrary

Suite Setup  Open the browser
Suite Teardown  close browser
Test Setup  Log in to app
Resource  ../Resources/BuyingProductKeywords.robot

*** Test Cases ***
AddingBuyingTest
    Go to Dresses page
    Select a product
    Add product to "add to cart" box
    Proceed to checkout


