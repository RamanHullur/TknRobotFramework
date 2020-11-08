*** Settings ***
Documentation    Suite description
Library          RequestsLibrary
Library          BuiltIn
Library          Collections
Library          XML
Resource         ../../TestData/plant_catelog.xml

*** Variables ***

*** Test Cases ***
Sample XML response varification
    [Tags]    XML varification


*** Keywords ***
Provided precondition
    Setup system under test