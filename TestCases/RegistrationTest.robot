*** Settings ***
Library    SeleniumLibrary

Suite Setup     Open the browser
Suite Teardown  close browser
Test Setup   Go to signIn page

Resource   ../Resources/RegistrationKeywords.robot

*** Test Cases ***
RegistrationTest
    Enter email and go to registration page
    Enter firstname lastname and password    lis   kris   123lis
    Enter address and city     st.louis    Virginia
    Select state     Virginia
    Enter zipCode and phoneNmbr   23922    1435869
    Click register
    Verify registration
