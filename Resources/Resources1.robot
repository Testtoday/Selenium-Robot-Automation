*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py
*** Variables ***
*** Keywords ***
Start Browser and Maximize
    Open Browser  http://thetestingworld.com/testings  Chrome
    Maximize Browser Window

Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser

Before Each Test Suite
    Log  Before Each Test Suite

After Each Test Suite
    Log  After Each Test Suite

Create Folder at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_subfolder  ${subfoldername}
    Log  "Task done successfully"
Concatinate User and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatinate_two_values  ${username}  ${password}
    Log  ${resultval}

