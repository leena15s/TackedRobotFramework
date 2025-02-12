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
    Close Application


TC07 -Validate Search Functionality based on DDT (json)

    Open Test Application
    Skip Page
    Start Button
    Select Electrical appliances

    ${json_data} =  Load Json From File  ${JSON_FILE}
    ${term1} =  Get Value From Json  ${json_data}  search_terms1
    ${term2} =  Get Value From Json  ${json_data}  search_terms2
    ${term3} =  Get Value From Json  ${json_data}  search_terms3

    Perform Search And Undo  ${term1}
    Perform Search And Undo  ${term2}
    Perform Search And Undo  ${term3}
