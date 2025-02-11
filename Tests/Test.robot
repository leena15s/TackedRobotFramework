*** Settings ***
Resource    configs/Keywords.robot
Resource    configs/Variables.robot
Resource    Pages/Skippage.robot
Resource    Pages/Homepages.robot    
Resource    Pages/Scanpages.robot
Resource    Pages/VehicleServicesPage.robot
*** Test Cases ***

TC03 - Scan Valid Refrigerator Barcode
    Open Test Application
    Skip Page
    Start Button
    Select Electrical appliances
    Select Freezer Barcode
    Close Application

TC04 - Scan Vehicle Fuel Economy
    Open Test Application
    Skip Page
    Start Button
    Swipe to Vehicle Services
    Click Vehicle Fuel Economy  
    Select Vehicle Barcode

TC05 - Scan Barcode not compatible
    Open Test Application
    Skip Page
    Start Button
    Select Electrical appliances
    Select Barcode Not Compatible