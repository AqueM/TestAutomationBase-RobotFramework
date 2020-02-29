*** Settings ***
Library        SeleniumLibrary
Variables        ../../page_objects/locators.py
Variables        ../variables.py

*** Keywords ***
I open Registration form
    [Arguments]     ${email}=${randomEmail}
    Go to    ${LOGIN_URL}
    Input Text      ${input_emailRegister}        ${email}
    Click Button    ${btn_createAccount}
    Wait until element is visible   ${input_customerFirstName}

I fill out registration form
    @{user}=    Get valid registration data
    @{fields}=      Set variable        @{registerInputs}
    ${length}=      Get length      ${user}
    :FOR    ${index}    IN RANGE     0  ${length}
    \   Input Text      @{fields}[${index}]       @{user}[${index}]
    sleep   5s
    Input Text      ${input_firstname}     @{user}[0]
    Input Text      ${input_lastName}     @{user}[1]
    Select from list by value   ${selector_state}       1
    sleep   5s

I input invalid data into a registration field
    [Arguments]     ${value}     ${field}
    Scroll element into view    ${input_${field}}
    Input Text    ${input_${field}}     ${value}

I finish registration
    Click Button    ${btn_register}

I should be on Registration form
    Wait until page contains element     ${frame_registrationForm}

Registration error message should be displayed
    Page should contain element       ${txt_invalidData}
