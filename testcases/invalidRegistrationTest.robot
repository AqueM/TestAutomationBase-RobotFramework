*** Settings ***
Library             SeleniumLibrary           run_on_failure=Capture Page Screenshot
Library             DataDriver    ../resources/test_data/invalidRegister.csv    dialect=excel
Resource            ../resources/keywords/registration.robot
Resource            ../resources/setup.robot
Variables           ../page_objects/locators.py

Test Template      Data validation check on the Registration form
Suite Setup         Initialize browser window
Suite Teardown      Close all browser windows

*** Test Case ***
    Try to register with invalid ${value} in ${field}

*** Keywords ***
Data validation check on the Registration form
    [Arguments]    ${value}    ${field}
    GIVEN I open Registration form
    WHEN I fill out registration form
    AND I input invalid data into a registration field   ${value}    ${field}
    AND I finish registration
    THEN I should be on Registration form
    AND Registration error message should be displayed