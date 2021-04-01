*** Settings ***
Library     SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Variables ***
${browser}   chrome
${websiteUrl}   http://automationpractice.com/index.php
${email}   asd02@gmail.com

*** Keywords ***
Open the browser
    open browser  ${websiteUrl}  ${browser}
    maximize browser window

Go to signIn page
    click element   ${signIn_HomePage}
    set selenium implicit wait  3 seconds

Enter email and go to registration page
    input text  ${txt_emailBox}   ${email}
    click button   ${createAnAcc_btn}

Enter firstname lastname and password
    [Arguments]  ${firstName}  ${lastName}  ${password}
    input text  ${txt_firstName}   ${firstName}
    input text  ${txt_lastName}    ${lastName}
    input text  ${txt_password}    ${password}

Enter address and city
    [Arguments]  ${address}  ${city}
    input text  ${txt_address}   ${address}
    input text  ${txt_city}   ${city}

Select state
    [Arguments]     ${state}
    select from list by label  ${drp_state}   ${state}

Enter zipCode and phoneNmbr
    [Arguments]   ${zipCode}  ${number}
    input text  ${txt_zipCode}  ${zipCode}
    input text  ${txt_phoneNmbr}    ${number}

Click register
    click button  ${register_btn}
    set selenium implicit wait  2 seconds
Verify registration
    title should be   My account - My Store
