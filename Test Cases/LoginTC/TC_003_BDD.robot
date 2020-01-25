*** Settings ***
Resource  ../../Resources/Resources1.robot

*** Variables ***
*** Test Cases ***
Test Case in BDD Format
   Given Start Browser and Maximize
   When Create Folder at Runtime  ABCD  XYZ
   Then Concatinate User and Password  Testing  World

