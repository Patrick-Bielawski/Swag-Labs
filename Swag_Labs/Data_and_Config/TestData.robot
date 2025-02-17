#
# Tento soubor obsahuje všechny Testovací Data
#

*** Variables ***
#uživatel
${USER1_USERNAME}                   standard_user
${USER1_PASSWORD}                   secret_sauce

#Strings
${TEXT_MainTitle}                   Swag Labs
${TEXT_Prihlasit}                   Přihlásit se
${TEXT_Ohlasit}                     Odhlásit se

#Error strings
${ERROR_TEXT_IncorrectEmailOrPwd}   These credentials do not match our records.
${ERROR_TEXT_EmptyPwd}              The password field is required.
${ERROR_TEXT_EmptyEmail}            The email field is required.

#SELEKTORY pro Login
${SEL_UsernameInput}         data-test=username
${SEL_PasswordInput}         data-test=password
${SEL_LoginButton}           data-test=login-button
${SEL_Logintitle}            data-test=title
${SEL_ShoppingCartLink}      data-test=shopping-cart-link
#${SEL_LoginErrorTxt}        data-test=email_input_errors
#${SEL_LoginIncorrectEmail}  data-test=email_input_errors
#${SEL_LoginIncorrectPwd}    data-test=password_input_errors
#${SEL_LoginFormEmail}       data-test=email_input
#${SEL_LoginFormPwd}         data-test=password_input
#${SEL_UserLoginBtn}         data-test=login_button
#${SEL_UserLogoutBtn}        data-test=logout_button

#SELEKTORY pro Header
${SEL_Menu}                 data-test=navigation_container




