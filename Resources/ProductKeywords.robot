*** Settings ***
Library   SeleniumLibrary
Variables   ../PageObjects/HomePage.py
Variables   ../PageObjects/Dress_TopsPage.py

*** Variables ***
${browser}   chrome
${websiteUrl}   http://automationpractice.com/index.php
${frame}    xpath://*[starts-with(@name,'fancybox-frame')]
${tabName}      Dresses
${linktabs}   (//a[normalize-space()='${tabName}'])[2]

*** Keywords ***
Open the browser
    open browser  ${websiteUrl}  ${browser}
    maximize browser window
    set selenium implicit wait  3 seconds
Go to Dresses page
    click element    ${linkTabs}
    title should be  Dresses - My Store
Select a subcategory
    click element   ${txt_CasualD}
    set selenium implicit wait  2 seconds
Select a product
    click element   ${txt_product}
Check product details
    select frame     ${frame}
    wait until element contains   ${product_details}    cotton
    unselect frame

