*** Settings ***
Documentation    Suite description
Library          RequestsLibrary
Library          BuiltIn
Library          Collections
Library          OperatingSystem
Resource         ../TestData/APIPath.robot
Library          DataDriver     ../TestData/TestData.csv
Test Template    Create Bearer auth API request


*** Test Cases ***
Creating Post Session with Bearer Authentication
    [Tags]    SanityTest

    Create Bearer auth API request
    ${request_body}=        get file        ../TestData/TestDataPostReq.txt
    ${response}=            post request    createsession    /    data= ${request_body}    headres=${headers}
    log to console          ${response.status_code}
    log to console          ${response.content}


*** Keywords ***
Create Bearer auth API request
    [Arguments]     ${bearer_token}
    create session          createsession          ${base_url_auth}
    ${headers}=             create dictionary      Authorization=${bearer_token}    Content-Type=text/xml

