*** Keywords ***
Open mars airlines website
    SeleniumLibrary.Open browser       ${mars_airlines_url}        ${chrome_browser}

Close mars airlines website
    BuiltIn.Run keyword and ignore error    SeleniumLibrary.Capture page screenshot
    BuiltIn.Run keyword if test failed      Run keyword and ignore error    SeleniumLibrary.Log source
    SeleniumLibrary.Close all browsers