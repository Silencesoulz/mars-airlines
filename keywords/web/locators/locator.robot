*** Variables ***
${ddl.departure_date}           xpath=//select[contains(@id,'departing')]
${ddl.arrival_date}             xpath=//select[contains(@id,'returning')]
${ddl.value_departure_date}     xpath=//option[contains(@value,'***value***')]
${ddl.value_arrival_date}       xpath=(//option[contains(@value,'***value***')])[last()]
${btn.search_button}            xpath=//input[contains(@type,'submit')]
${lbl.returned_message}         xpath=//p[contains(text(),'***text***')]