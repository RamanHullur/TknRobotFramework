*** Settings ***
Library     RequestsLibrary
Library     BuiltIn
Library     Collections


*** Variables ***
${base_url}     http://restapi.demoqa.com
${city}         Delhi

${base_url2}    https://reqres.in
${users}        /api/users?page=2

*** Test Cases ***
Test_GeUsersDetailsReport
    [Tags]    Fetching users details

    #create session      mysession       ${base_url}
    create session      mysession       ${base_url2}
    ${response}=        get request         mysession       ${users}

    #log to console     ${response.status_code}
    #log to console     ${response.content}
    #log to console     ${response.headers}

    #VALIDATIONS

    ${status_code}=    Convert To String       ${response.status_code}
    should be equal    ${status_code}          200

    ${body}=           Convert To String       ${response.content}
    ${body_2}=         Convert To String       ${response.content}
    ${headers}=        Convert To String       ${response.headers}
    ${header_content}=    get from dictionary     ${response.headers}      Content-Type

    should contain     ${body}                 michael.lawson@reqres.in
    should contain     ${body_2}               Michael
    should contain     ${headers}              application/json
    should be equal    ${header_content}       application/json; charset=utf-8










