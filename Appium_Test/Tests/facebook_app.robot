*** Settings ***
Documentation    This is a sample test for automating Facebook app using Robot Framework with Python
Resource    ../Resources/resources.robot
Resource    ../Keywords/fb_keywords.robot
Test Setup    Setup Application
Test Teardown    Teardown Application


*** Test Cases ***
Test_Case_1
    [Tags]    TC_1
    [Documentation]    Launch app and verify home page
    Set Test Variable    ${Test_name}    Facebook_TC_1
    Set Test Variable    ${Kpi_count}    1
    
    Launch App


Test_Case_2
    [Tags]    TC_2
    [Documentation]    Search a keyword and show the result
    Set Test Variable    ${Test_name}    Facebook_TC_2
    Set Test Variable    ${Kpi_count}    2
    
    Launch App
    Run Search    Mark Zuckerberg    Founder and CEO at Meta


*** Variables ***
${App_name}    Facebook