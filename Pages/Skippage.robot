*** Settings ***
Resource    configs/Keywords.robot

*** Variables ***
${Skip}      xpath=//android.widget.TextView[@text='تخطي']
${AllowN}    //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]


*** Keywords ***
Skip Page
    Wait and Click Element    ${Skip}
