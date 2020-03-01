*** Settings ***
Variables       ../page_objects/locators_register.py
Variables       ../page_objects/locators_login.py
Variables        ../variables.py

*** Keywords ***
I open Registration form
    [Arguments]     ${email}=${random_email}
    Go to    ${login_url}
    Input Text      ${input_email_register}        ${email}
    Click Button    ${btn_create_account}
    Wait until element is visible   ${input_customer_firstname}

I fill out registration form
    @{user}=    Get valid registration data
    @{fields}=      Set variable        @{register_inputs}
    ${length}=      Get length      ${user}
    :FOR    ${index}    IN RANGE     0  ${length}
    \   Input Text      @{fields}[${index}]       @{user}[${index}]
    Input Text      ${input_firstname}     @{user}[0]
    Input Text      ${input_lastname}     @{user}[1]
    Select from list by value   ${selector_state}       ${random_state}

I input invalid data into a registration field
    [Arguments]     ${value}     ${field}
    Scroll element into view    ${input_${field}}
    Input Text    ${input_${field}}     ${value}

I finish registration
    Click Button    ${btn_register}

I should be on Registration form
    Wait until page contains element     ${frame_registration_form}

Registration error message should be displayed
    Page should contain element       ${txt_invalid_data}
