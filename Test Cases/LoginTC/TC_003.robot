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
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
TC_001
Open Browser    https://www.thetestingworld.com/testings/    ${BROWSER}
Input Text    //input[@name="fld_username"]    testing
Input Text    //input[@name="fld_email"]    testing@abcd.com
Input Text    //input[@name="fld_password"]    ***
Click Element    xpath=(//td[@class=" "])[20]
Input Text    //input[@name="phone"]    54775677456
Input Text    //input[@name="address"]    tewt@gmail.com
Click Element    //input[@name="add_type"]
Select From List By Value    //select[@name="sex"]    2
Select From List By Value    //select[@name="country"]    19
Click Element    //form[@name="register"]
Click Element    xpath=(//input)[14]
Click Element    //div[@class="btn"]
Click Element    //input[@name="terms"]
Click Element    xpath=(//input)[14]
Click Element    xpath=(//input)[14]
Click Element    xpath=(//div[@class="container"])[2]
Click Element    xpath=(//div[@class="container"])[2]
Input Text    //input[@name="fld_password"]    ***
Input Text    //input[@name="fld_cpassword"]    ***
Click Element    xpath=(//input)[14]