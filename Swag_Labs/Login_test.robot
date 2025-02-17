*** Settings ***
Library             Browser
Resource            Data_and_Config/Configuration.robot
Resource            Data_and_Config/TestData.robot
Test Setup          Open Login Page
Test Teardown       Close Browser
Suite Setup         Open Browser Session
Suite Teardown      Close Browser Session
Test Timeout        ${TC_TIMEOUT_ROBOT_KW}

*** Test Cases ***
# Valid Login Test
Valid Login
    [Documentation]     Test valid login
    Login         ${USER1_USERNAME}    ${USER1_PASSWORD}

*** Keywords ***

# Setup and Teardown Keywords
Open Browser Session
    New Browser     headless=False

Close Browser Session
    Close Browser

Open Login Page
    New Page            ${URL_LOGIN}
    Get Title   ==      ${TEXT_MainTitle}    timeout=10s
    Log                 ${TEXT_MainTitle}



# Keywords for Login Tests
Login
    [Arguments]       ${Username}     ${Password}
    Type Text                   ${SEL_UsernameInput}       ${Username}
    Type Text                   ${SEL_PasswordInput}       ${Password}
    Click                       ${SEL_LoginButton}
    Wait For Elements State     ${SEL_ShoppingCartLink}    visible    timeout=10s
    Log                         ${SEL_ShoppingCartLink}
    Take Screenshot

