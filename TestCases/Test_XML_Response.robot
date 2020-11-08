*** Settings ***
Documentation    Suite description
Library          RequestsLibrary
Library          BuiltIn
Library          Collections
Library          XML
Resource        ../TestData/APIPath.robot


*** Test Cases ***
Demo test case to fetch XML response
    [Tags]  XML response varification

    create session      demosession     ${base_url_xml}
    ${xml_response}=    get request     demosession         ${end_point_xml}
    ${xml_response_output}=             convert to string   ${xml_response}

    ${xml_obj}=          parse xml   ${xml_response_output}
    element text should be           ${xml_obj}        15    .//ID










