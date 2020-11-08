*** Settings ***
Documentation    Suite description
Library          RequestsLibrary
Library          BuiltIn
Library          Collections

*** Keywords ***
#${base_url}=      https://reqres.in/api/users

*** Variables ***
${base_url}=        https://reqres.in
${end_point}=       /api/users

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





