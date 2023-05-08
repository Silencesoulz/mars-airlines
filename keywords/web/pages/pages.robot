*** Keywords ***
Click dropdown to select departure date
    [Arguments]     ${value_date}
    common.Wait and click element       ${ddl.departure_date}
    ${locator}      String.Replace string      ${ddl.value_departure_date}     ***value***     ${value_date}
    common.Wait and click element       ${locator}

Click dropdown to select arrival date
    [Arguments]     ${value_date}
    common.Wait and click element       ${ddl.arrival_date}
    ${locator}      String.Replace string      ${ddl.value_arrival_date}     ***value***     ${value_date}
    common.Wait and click element       ${locator}

Click search button
    common.Wait and click element       ${btn.search_button}


