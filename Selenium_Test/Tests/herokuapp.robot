*** Settings ***
Documentation    This is a sample test for automating Herokuapp using Robot Framework with Selenium
Resource    ../Resources/herokuapp_keywords.robot
Test Setup    Setup Browser
Test Teardown    Teardown Browser


*** Test Cases ***
Test_Case_1
    [Documentation]   Test to add an element and then delete the element
    Launch
    Add/Remove Elements
Test_Case_2
    [Documentation]   Test to showcase dynamically loaded page elements
    Launch
    Dynamic Loading


*** Keywords ***
Setup Browser
    Open Browser    ${URL}    ${BROWSER}
Teardown Browser
    Close Browser


*** Variables ***
${URL}     https://the-internet.herokuapp.com
${BROWSER}    safari