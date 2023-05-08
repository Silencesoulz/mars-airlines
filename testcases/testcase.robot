*** Settings ***
Resource        ${CURDIR}/../resources/imports.robot
Test Setup      common.Open mars airlines website
Test Teardown   common.Close mars airlines website

*** Test Cases ***
Test open website
    [Tags]  Test_01
    common.Open mars airlines website