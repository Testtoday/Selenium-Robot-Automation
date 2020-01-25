*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Resources1.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite
*** Variables ***
${Browser}  Chrome
${Url}  http://thetestingworld.com/testings

*** Test Cases ***
TC_001 Variable Test
    Input Text  name:fld_username  Testing
    Input Text  name:fld_email  testingworldindia@gemail.com
    Input Text  name:fld_password  1234

#TC_002 Variable Test
   # Select Radio Button  add_type  office

