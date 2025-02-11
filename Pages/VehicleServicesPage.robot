*** Settings ***
Resource    configs/Keywords.robot

*** Variables ***
${VehicleFulEconomy}        //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[9]
${AllowN02}        com.android.permissioncontroller:id/permission_allow_foreground_only_button

*** Keywords ***

Click Vehicle Fuel Economy
    Wait And Click Element     ${VehicleFulEconomy}
    Wait And Click Element    ${AllowN02}


    
