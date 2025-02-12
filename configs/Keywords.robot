*** Settings ***
Library    AppiumLibrary
Library      JSONLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${DEVICE_NAME}                Android Emulator
${APP_PACKAGE}               com.sa.gov.saso.android.qee
${APP_ACTIVITY}             com.sa.gov.saso.android.qee.MainActivity
${APPIUM_SERVER}              http://127.0.0.1:4723

*** Keywords ***

Open Test Application
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    #...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}


Wait and Click Element 
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10 s
    Click Element    ${locator}

Wait and Input text
    [Arguments]     ${locator}    ${text}
    Wait Until Element Is Visible     ${locator}    10 s
    Input Text      ${locator}    ${text}







