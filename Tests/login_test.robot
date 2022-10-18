*** Settings ***
Resource          ../Pages/login_page.robot
Resource          ../Pages/home_page.robot
Resource          ../Steps/login_steps.robot
Resource          ../Resources/resource.robot
Test Setup        Open Login Page Via Chrome
Test Teardown     Close My Browser

*** Variables ***

# Test Data

${valid_username}       Admin
${valid_password}       admin123
${invalid_username}       08787y8
${invalid_password}       [\\';[]aa


*** Test Cases ***
Valid Login
  Given Login Page Opened
  When Input Username And Password    ${valid_username}    ${valid_password}
  Then Home Page Opened

Invalid Login
  [Template]    Login with Invalid Credentials
  # username   password
  ${valid_username}   ${invalid_password}
  ${invalid_username}   ${valid_password}
  ${invalid_username}   ${invalid_password}


*** Keywords ***
Login with Invalid Credentials
  [Arguments]   ${username}   ${password}
  Given Login Page Opened
  When Input Username And Password    ${username}    ${password}
  Then Alert Message Displayed