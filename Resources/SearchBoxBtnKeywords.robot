*** Settings ***
Library   SeleniumLibrary
Variables   ../PageObjects/HomePage.py
Variables   ../PageObjects/Dress_TopsPage.py

*** Variables ***
${browser}   chrome
${websiteUrl}   http://automationpractice.com/index.php

*** Keywords ***
Open the browser
    open browser    ${websiteUrl}   ${browser}
    maximize browser window

Search product
    [Arguments]  ${productName}
    input text  ${searchBox}    ${productName}
    click button    ${search_btn}

Verify search result
    title should be    Search - My Store