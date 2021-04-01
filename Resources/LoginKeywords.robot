*** Settings ***
Library   SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Variables ***
${browser}   chrome
${websiteUrl}   http://automationpractice.com/index.php
${Email}      asd123@gmail.com
${password}      123lis

*** Keywords ***
Open the browser
    open browser  ${websiteUrl}  ${browser}
    maximize browser window

Go to login page
    click element   ${signIn_HomePage}
    set selenium implicit wait  2 seconds
    title should be  Login - My Store
Enter email and password
    input text  ${txt_loginEmail}   ${Email}
    input text  ${txt_loginPassword}    ${password}

Click signIn
    click button   ${signIn_btn}
    set selenium speed  1seconds
Verify successfull login
    title should be  My account - My Store

