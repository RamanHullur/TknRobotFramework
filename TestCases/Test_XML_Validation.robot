*** Settings ***
Documentation    Suite description
Library          RequestsLibrary
Library          BuiltIn
Library          Collections
Library          XML
Resource         ../TestData/plant_catelog.xml



*** Test Cases ***
Sample XML response varification
    [Tags]    XML varification

    ${xml_obj}=            parse xml             .//TestData/plant_catelog.xml
    ${xml_values}=         get element text      ${xml_obj}         .//PLANT[1]/COMMON
    should be equal        ${xml_values}         Bloodroot
    log to console         ${xml_values}

    ${xml_values2}=        get element          ${xml_obj}          .//PLANT[2]/COMMON
    should be equal        ${xml_values2.text}  Columbine
    log to console         ${xml_values2}

    element text should be      ${xml_obj}      Columbine           .//PLANT[2]/COMMON


