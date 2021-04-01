*** Settings ***
Library   SeleniumLibrary
Variables   ../PageObjects/HomePage.py
Variables   ../PageObjects/Dress_TopsPage.py
Variables   ../PageObjects/Locators.py
Variables  ../PageObjects/buyingPage.py
*** Variables ***
${browser}   chrome
${websiteUrl}   http://automationpractice.com/index.php
${logInURL}     http://automationpractice.com/index.php?controller=authentication&back=my-account
${Email}      asd123@gmail.com
${password}      123lis
${tabName}      Dresses
${linktabs}   (//a[normalize-space()='${tabName}'])[2]
${frame}    xpath://*[starts-with(@name,'fancybox-frame')]
*** Keywords ***
Open the browser
    open browser  ${websiteUrl}  ${browser}
    maximize browser window
    set selenium implicit wait  3 seconds
Log in to app
    go to   ${logInURL}
    input text  ${txt_loginEmail}   ${Email}
    input text  ${txt_loginPassword}    ${password}
    click button   ${signIn_btn}
    set selenium implicit wait  2 seconds
Go to Dresses page
    click element   ${linkTabs}
    title should be  Dresses - My Store
Select a product
    click element   ${txt_product}
    set selenium speed  2seconds
Add product to "add to cart" box
    select frame     ${frame}
    click element   ${addToCart_btn}
Proceed to checkout
    click element   ${proceedCheck_btn}
    unselect frame
    click element   ${toCheckout_btn}
    set selenium speed  2seconds
    click element   ${checkout_btn}
    select checkbox  cgv
    click element   ${checkFinal_btn}
    click element   ${payMethod}
    click element   ${confirm_btn}