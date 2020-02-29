*** Settings ***
Library           SeleniumLibrary           run_on_failure=Failure log, screenshot_root_directory=../reports/screenshots
Library           ../resources/variables.py
Variables          ../page_objects/environment.py

*** Variables ***
${LOGIN_URL}      ${loginPageURL}
${BROWSER}        ${browserEnv}

*** Keywords ***
Initialize browser window
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Close all browser windows
    Close all browsers

Failure log
    Capture Page Screenshot
    Log Location

Initialize with user
    Initialize browser window
    @{user}=        Get valid user
    Set suite variable      ${username}     @{user}[0]
    Set suite variable      ${password}     @{user}[1]

