*** Settings ***
Resource          ../Pages/login_page.robot

*** Keywords ***
Input Username And Password
  [Arguments]   ${username}   ${password}
  Input Username        ${username}
  Input Password        ${password}
  Login Button Should Be Enabled
  Click Login Button