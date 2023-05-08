*** Keywords ***
Fill date information then search
    [Arguments]     ${value_departure_date}     ${value_arrival_date}
    pages.Click dropdown to select departure date   ${value_departure_date}
    pages.Click dropdown to select arrival date     ${value_arrival_date}
    pages.Click search button