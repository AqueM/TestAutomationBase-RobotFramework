*** Settings ***
Resource            ../resources/keywords/login.robot
Resource            ../resources/setup.robot

Suite Setup         Initialize with user
Suite Teardown      Close all browser windows

*** Test Case ***
Valid Login
    GIVEN I open Login page
    AND I input Username    ${username}
    AND I input Password    ${password}
    WHEN I submit credentials
    THEN My Account Page should be open
    AND I should see my name in the header   ${name}


