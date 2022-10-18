*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${PROFILE_IMAGE}     css:img[alt='profile picture']

*** Keywords ***
Home Page Opened
  Wait Until Element Is Visible    ${PROFILE_IMAGE}
  Element Should Be Visible        ${PROFILE_IMAGE}

