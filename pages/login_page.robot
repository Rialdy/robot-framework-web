*** Settings ***
Library        SeleniumLibrary

*** Variables **
${username_field}=       //*[@placeholder="Username"]
${password_field}=       //*[@placeholder="Password"]
${login_button}=         //*[@name="login-button"]
${icon_login}=           //*[@class="login_logo"]
${login_error_text}=     //*[@data-test="error"]

*** Keywords ***
Home Page Displayed
  Wait Until Element Is Visible    ${icon_login}
  Element Should Be Visible        ${icon_login}
  Wait Until Element Is Visible    ${username_field}
  Element Should Be Visible        ${username_field}
  Wait Until Element Is Visible    ${password_field}
  Element Should Be Visible        ${password_field}

Input Username
  [Arguments]    ${username}
  Input Text    ${username_field}    ${username}

Input Password
  [Arguments]    ${password}
  Input Text    ${password_field}    ${password}

Click Login button
  Click Button    ${login_button}

Verify Error Message
  [Arguments]    ${error_message}
  Wait Until Element Is Visible   ${login_error_text}
  Element Should Be Visible       ${login_error_text}
  ${actualResult} =    Get Text   ${login_error_text}
  Element Text Should Be    ${login_error_text}    ${error_message}