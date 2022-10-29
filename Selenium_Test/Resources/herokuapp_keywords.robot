*** settings ***
Library    SeleniumLibrary


*** Keywords ***
Launch
    Wait Until Page Contains    Welcome to the-internet
Add/Remove Elements
    Click Link    Add/Remove Elements
    Click Button    Add Element
    Click Button    Delete
Dynamic Loading
    Click Link    Dynamic Loading
    Click Link    Example 1: Element on page that is hidden
    Click Button    Start
    Wait Until Page Contains    Hello World!    timeout=20
    Go Back
    Click Link    Example 2: Element rendered after the fact
    Click Button    Start
    Wait Until Page Contains    Hello World!    timeout=20
    Go Back