*** Settings ***
Documentation    Suite description
Library          RequestsLibrary
Library          BuiltIn
Library          Collections
Resource         ../TestData/APIPath.robot

*** Test Cases ***
Modifying the Student Details
    [Tags]    Modify the Student details for ID=1

    create session          addstudentdata          ${base_url}
    ${body}=                create dictionary       name=Hullur2    job=Software Engineer2
    ${header}=              create dictionary       Content-Type=application/json, text/json

    ${response}=            put request             addstudentdata   ${update_user}   data=${body}    headers=${header}
    ${statuscode}=          convert to string       ${response.status_code}
    should be equal         ${statuscode}           200

    #log to console          ${response.status_code}
    #log to console          ${response.headers}
    #log to console          ${response.content}

    #VALIDATION
    ${response.header}=     convert to string       ${response.headers}
    should contain          ${response.header}      keep-alive

    #${response.body}=       convert to string       ${response.content}
    #should contain          ${response.body}        Hullur2




