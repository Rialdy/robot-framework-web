*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login_page.robot
Resource    ../setups/resources.robot

*** Keywords ***
User verify page element in home page
    Home Page Displayed

User input username "${username}"
    Input Username    ${username}

User input password "${password}"
    Input Password    ${password}

User click login button
    Click Login button

User verify error message "${error_message}"
    Verify Error Message    ${error_message}

User input username and password "${username}" "${password}"
    Input Username    ${username}
    Input Password    ${password}