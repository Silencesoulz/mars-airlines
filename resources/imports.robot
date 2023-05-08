*** Settings ***
Library    String
Library    Collections
Library    DateTime
Library    SeleniumLibrary      run_on_failure=SeleniumLibrary.Capture Page Screenshot
Library    AppiumLibrary        run_on_failure=AppiumLibrary.Capture Page Screenshot
Library    DebugLibrary

Resource    ${CURDIR}/../keywords/web/common.robot

# Features
Resource    ${CURDIR}/../keywords/web/features/features.robot

# Pages
Resource    ${CURDIR}/../keywords/web/pages/pages.robot

# Locator
Resource    ${CURDIR}/../keywords/web/locators/locator.robot

# Test data
Variables   ${CURDIR}/testdata/test_data_web.yaml
Variables   ${CURDIR}/settings/setting.yaml