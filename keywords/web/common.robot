*** Keywords ***
Open mars airlines website
    SeleniumLibrary.Open browser       ${mars_airlines_url}        ${chrome_browser}

Close mars airlines website
    BuiltIn.Run keyword and ignore error    SeleniumLibrary.Capture page screenshot
    BuiltIn.Run keyword if test failed      Run keyword and ignore error    SeleniumLibrary.Log source
    SeleniumLibrary.Close all browsers

Wait and click element
    [Arguments]    ${locator}
    SeleniumLibrary.Wait until element is visible    ${locator}
    SeleniumLibrary.Click Element    ${locator}

Verify returned message
    [Arguments]     ${return_text}
    ${locator}      String.Replace string      ${lbl.returned_message}     ***text***     ${return_text}
    common.Wait and click element       ${locator}