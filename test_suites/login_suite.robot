*** Settings ***
Library    SeleniumLibrary
Resource   ../steps/login_step.robot
Resource   ../setups/resources.robot
Test Setup    Open Home Page
Test Teardown    Close Browser


*** Test Cases ***
Scenario: User login with valid credential
    [Tags]    Smoke    valid_credential
    Given User verify page element in home page
    Then User input username and password "${valid_username}" "${valid_password}"
    Then User click login button

Scenario: User login with invalid credential
    [Tags]    Smoke    invalid_credential
    Given User verify page element in home page
    Then User input username and password "${invalid_username}" "${invalid_password}"
    Then User click login button
    Then User verify error message "${error_text_user_and_pass}"

Scenario: User login with empty password
    [Tags]    Smoke    empty_password
    Given User verify page element in home page
    Then User input username "${valid_username}"
    Then User click login button
    Then User verify error message "${error_text_password}"

Scenario: User login with empty username
    [Tags]    Smoke    empty_username
    Given User verify page element in home page
    Then User input password "${valid_password}"
    Then User click login button
    Then User verify error message "${error_text_username}"

Scenario: User Login with empty credential
    [Tags]    Smoke    empty_credential
    Given User verify page element in home page
    Then User click login button
    Then User verify error message "${error_text_username}"