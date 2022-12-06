*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${home_page}                  https://www.saucedemo.com/
${browser}                    Chrome
${valid_username}             standard_user
${valid_password}             secret_sauce
${invalid_username}           standarduser
${invalid_password}           secretsauce
${error_text_username}        Epic sadface: Username is required
${error_text_password}        Epic sadface: Password is required
${error_text_user_and_pass}   Epic sadface: Username and password do not match any user in this service

*** Keywords ***
Open Home Page
  Open Browser    ${home_page}    ${browser}
  Maximize Browser Window