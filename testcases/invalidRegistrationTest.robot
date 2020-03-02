*** Settings ***
Library             DataDriver    ../resources/test_data/invalidRegister.csv    dialect=excel
Resource            ../resources/keywords/registration.robot
Resource            ../resources/setup.robot

Test Template      Data validation check on the Registration form
Test Setup         Initialize browser window
Test Teardown      Close all browser windows

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