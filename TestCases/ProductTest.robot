*** Settings ***
Library     SeleniumLibrary

Suite Setup  Open the browser
Suite Teardown  close browser
Resource   ../Resources/ProductKeywords.robot

*** Test Cases ***
ProductDetailTest
    Go to Dresses page
    Select a subcategory
    Select a product
    Check product details