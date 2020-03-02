*** Settings ***
Library           SeleniumLibrary           run_on_failure=Failure log  screenshot_root_directory=reports/screenshots
Library           ../resources/variables.py

Variables          ../resources/environment.py

*** Variables ***
${login_url}      ${login_page_url}
${browser}        ${browser_env}

*** Keywords ***
Initialize browser window
    Open Browser    browser=${browser}
    Maximize Browser Window

Close all browser windows
    Close all browsers

Failure log
    Log Location
    Capture Page Screenshot

Initialize with user
    Initialize browser window
    @{user}=        Get valid user
    Set suite variable      ${username}     @{user}[0]
    Set suite variable      ${password}     @{user}[1]
    Set suite variable      ${name}         @{user}[2]

