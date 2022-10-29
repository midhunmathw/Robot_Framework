*** Settings ***
Library    AppiumLibrary


*** Keywords ***
Launch App
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Action menu"]    timeout=10
    Log To Console    \nApp Launched

Run Search
    [Arguments]    ${search_keyword}    ${result_keyword}
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Search"]    timeout=10
    Click Element    xpath=//android.widget.ImageView[@content-desc="Search"]
    Wait Until Element Is Visible    com.google.android.youtube:id/search_edit_text    timeout=10
    Input Text    com.google.android.youtube:id/search_edit_text    ${search_keyword}
    Press Keycode    66
    Wait Until Page Contains    ${result_keyword}    timeout=20
    Sleep    3s
    Log To Console    \nSearch Result is shown