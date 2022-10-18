*** Settings ***
Library       SeleniumLibrary
Variables      constant_variable.py

*** Variables ***
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Open Login Page Via Chrome
  Create Webdriver    Chrome   executable_path=${CHROME_EXECUTABLE_PATH}
  Open Browser    ${URL}        Chrome
  Maximize Browser Window

Close My Browser
    close all browsers
