*** Settings ***
Library  ../../ExternalKeywords/Locators.py
Library  SeleniumLibrary
Resource  ../../Resources/Resources1.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite
default tags  DFLT
force tags  ALL_TC
*** Variables ***
${Browser}  Chrome
${Url}  http://thetestingworld.com/testings

*** Test Cases ***
TC_001 Variable Test
    [Tags]  Smoke
    ${username}=  Read_Element_Locator  Registration.username_textbox_name
    Input Text  name:${username}  Testing
    Input Text  name:fld_email  testingworldindia@gemail.com
${password}=  Read_Element_Locator  Registration.password_textbox_name
    Input Text  name:${password}  1234

TC_002 Variable Test
    [Tags]  Smoke Sanity
    Select Radio Button  add_type  office

*** Keywords ***
Read_Element_Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    [return]  ${result}


