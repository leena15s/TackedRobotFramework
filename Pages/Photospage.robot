*** Settings ***
Resource    configs/Keywords.robot

*** Variables ***
${Freezer_code}   //android.widget.ImageView[@resource-id="com.google.android.documentsui:id/icon_thumb"]


*** Keywords ***

Select Freezer barcode
    Wait And Click Element    ${Freezer_code}