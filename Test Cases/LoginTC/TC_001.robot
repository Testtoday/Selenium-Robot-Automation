*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/UserKeywords.robot
*** Variables ***
${var1}  http://thetestingworld.com

*** Test Cases ***
TC_001 Login Logout Functionality
   open browser  ${var1}  Chrome
   maximize browser window
   click element  xpath://a[text()='Login']

   ${row}=  Read Number of Rows  Tabelle1

   : FOR  ${i}  IN RANGE  1  ${row}+1
    \  ${username}=  Read Excel Data of Cell  Tabelle1  ${i}  1
    \  ${password}=  Read Excel Data of Cell  Tabelle1  ${i}  2
    \  input text  id:username  ${username}
    \  input text  id:password  ${password}
    \  click button  xpath://button[@type='submit']
    \  sleep  5 seconds



*** Keywords ***



