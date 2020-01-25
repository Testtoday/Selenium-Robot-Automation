*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Resources1.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite
#Test Setup  Start Browser and Maximize
*** Variables ***

${Browser}  Chrome
${Url}  http://thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Concatinate User and Password  Testing  World
    Open Browser  ${Url}  ${Browser}
    Maximize Browser Window


