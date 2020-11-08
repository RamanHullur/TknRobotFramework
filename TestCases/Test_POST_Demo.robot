*** Settings ***
Documentation    Suite description
Library          RequestsLibrary
Library          BuiltIn
Library          Collections
Resource         ../TestData/APIPath.robot


*** Test Cases ***
Test_CreatingNewUser
    [Tags]    Generate the new user

    create session  mysession           ${base_url}
    ${body}=        create dictionary   name=Raman   job=Senior Test Engineer
    ${header}=      create dictionary   Content-Type=application/json

    ${response}=    post request    mysession           ${end_point}     data=${body}   headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}

    #VALIDATIONS
    ${response_body}=       convert to string       ${response.content}
    should contain          ${response_body}        Raman
    should contain          ${response_body}        Senior Test Engineer

    ${status_code}=    convert to String    ${response.status_code}
    should be equal    ${status_code}       201





