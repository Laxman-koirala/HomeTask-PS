*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}             xpath://input[@name='username']
${PASSWORD_FIELD}             xpath://input[@name='password']
${LOGIN_BUTTON}               css:button[type='submit']
${ALERT_MESSAGE}              css:div[role='alert']

*** Keywords ***
Login Page Opened
  Wait Until Element Is Visible     ${USERNAME_FIELD}
  Element Should Be Visible         ${USERNAME_FIELD}
  Wait Until Element Is Visible     ${PASSWORD_FIELD}
  Element Should Be Visible         ${PASSWORD_FIELD}

Input Username
  [Arguments]                       ${username}
  Wait Until Element Is Enabled     ${USERNAME_FIELD}
  Input Text                        ${USERNAME_FIELD}       ${username}

Login Button Should Be Enabled
  Wait Until Element Is Enabled     ${LOGIN_BUTTON}
  Element Should Be Enabled         ${LOGIN_BUTTON}

Input Password
  [Arguments]                       ${password}
  Wait Until Element Is Enabled     ${PASSWORD_FIELD}
  Input Text                        ${PASSWORD_FIELD}       ${password}

Click Login Button
  Wait Until Element Is Enabled     ${LOGIN_BUTTON}
  Click Element                     ${LOGIN_BUTTON}

Alert Message Displayed
  Wait Until Element Is Visible     ${ALERT_MESSAGE}
  Element Should Be Visible         ${ALERT_MESSAGE}