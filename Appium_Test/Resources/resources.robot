*** Settings ***
Library    AppiumLibrary    #timeout=20


*** Variables ***
${device_id}
${appium_input}
${os}
${package}
${activity}
${bundleid}

${App_name}
${Test_name}
${Kpi_count}
${package_name}


*** Keywords ***
Setup Application
    Open App
    
Teardown Application
    ${session_id}    Get Appium SessionId
    ${connection_status}    Get Network Connection Status
    Close Application
    Set Test Message    ${session_id}


Open App
    Run Keyword If    '${App_name}'=='Facebook'    Open Facebook   
    ...  ELSE IF    '${App_name}'=='Youtube'    Open Youtube
    Run Keyword If    '${os}'=='Android'
    ...    Open Application    ${appium_input}    
           ...                 udid=${device_id}   
           ...                 platformName=Android    
           ...                 appPackage=${package}    
           ...                 appActivity=${activity}    
           ...                 automationName=UiAutomator2    
           ...                 autoAcceptAlerts=true    
           ...                 noReset=true    
    ...  ELSE IF    '${os}'=='iOS'
    ...    Open Application    ${appium_input}    
           ...                 udid=${device_id}   
           ...                 platformName=iOS    
           ...                 app=${bundleid}    
           ...                 automationName=XCUITest    
           ...                 autoAcceptAlerts=true    
           ...                 noReset=true    

Open Facebook
    ${package}=    Set Variable    com.facebook.katana
    ${activity}=    Set Variable    com.facebook.katana.LoginActivity
    ${bundleid}=    Set Variable    com.facebook.Facebook
    ${package_name}=    Set Variable If    '${os}'== 'Android'    ${package}    ${bundleid}
    Set Global Variable    ${package}
    Set Global Variable    ${activity}
    Set Global Variable    ${bundleid}
    Set Global Variable    ${package_name}

Open Youtube
    ${package}=    Set Variable    com.google.android.youtube
    ${activity}=    Set Variable    com.google.android.youtube.app.honeycomb.Shell$HomeActivity
    ${bundleid}=    Set Variable    com.google.ios.youtube
    ${package_name}=    Set Variable If    '${os}'== 'Android'    ${package}    ${bundleid}
    Set Global Variable    ${package}
    Set Global Variable    ${activity}
    Set Global Variable    ${bundleid}
    Set Global Variable    ${package_name}