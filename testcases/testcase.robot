*** Settings ***
Resource        ${CURDIR}/../resources/imports.robot
Test Setup      common.Open mars airlines website
Test Teardown   common.Close mars airlines website

*** Test Cases ***
Verify that when user fill period departure date and arrival date more than 1 year should be valid (Seat available)
    [Tags]  TC_01   web
    pages.Click dropdown to select departure date   ${value_july}
    pages.Click dropdown to select arrival date     ${value_december_next_2_year}
    pages.Click search button
    common.Verify returned message      ${txt_seat_available}

Verify that when user fill period departure date and arrival date more than 1 year should be valid (Seat not available)
    [Tags]  TC_02   web
    features.Fill date information then search      ${value_july}  ${value_july_next_year}
    common.Verify returned message      ${txt_no_more_seat}

Verify that when user fill period departure date and arrival date less than 1 year should not valid
    [Tags]  TC_03   web
    features.Fill date information then search      ${value_july}  ${value_december}
    common.Verify returned message      ${txt_unfotunately}