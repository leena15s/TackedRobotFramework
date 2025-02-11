*** Settings ***
Resource    configs/Keywords.robot
Resource    Pages/Scanpages.robot

*** Variables ***
${Photo}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.widget.ImageView
${Allow_photo}        //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${Freezer_code}     //android.view.ViewGroup[@content-desc="Photo taken on Feb 9, 2025 3:30:50 PM"]
${Photo_btn}    //android.widget.LinearLayout[@resource-id="com.google.android.documentsui:id/apps_group"]/android.widget.LinearLayout[2]
${Photo_alb}    //android.widget.RelativeLayout
${Vehicle_code}  //android.view.ViewGroup[@content-desc="Photo taken on Feb 9, 2025 4:06:03 PM"]
${Barcode_error}    //android.view.ViewGroup[@content-desc="Photo taken on Feb 11, 2025 10:32:59 AM"]

*** Keywords ***


Select Photo btn
    Wait And Click Element         ${Photo}
    Wait And Click Element    ${Allow_photo}
    Wait And Click Element    ${Photo_btn}
    Wait And Click Element    ${Photo_alb}


Select Freezer barcode
    Select Photo Btn
    Wait And Click Element    ${Freezer_code}


Select Vehicle barcode
    Select Photo Btn
    Wait And Click Element    ${Vehicle_code}

Select Barcode not compatible
    Select Photo Btn
    Wait And Click Element    ${Barcode_error}

