*** Settings ***
Variables       ../../page_objects/locators_login.py


*** Keywords ***
I open Login page
    Go to    ${login_url}

I input Username
    [Arguments]    ${username}
    Input Text    ${input_email_login}    ${username}

I input Password
    [Arguments]    ${password}
    Input Text    ${input_password_login}    ${password}

I submit credentials
    Click Button    ${btn_sign_in}

My Account Page should be open
    Location should be      ${account_page_url}

I should see my name in the header
    [Arguments]     ${name}
    Element should contain    ${txt_account_info}     ${name}