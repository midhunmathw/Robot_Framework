*** Settings ***
Library    AppiumLibrary


*** Keywords ***
Launch App
    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="Live"]    timeout=10
    Log To Console    \nApp Launched

Run Search
    [Arguments]    ${search_keyword}    ${result_keyword}
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Search"]    timeout=10
    Click Element    xpath=//android.widget.Button[@content-desc="Search"]
    Wait Until Element Is Visible    class=android.widget.EditText    timeout=10
    Input Text    class=android.widget.EditText    ${search_keyword}
    Press Keycode    66
    Wait Until Page Contains    ${result_keyword}    timeout=20
    Sleep    3s
    Log To Console    \nSearch Result is shown