*** Settings ***
Documentation    Suite description
Library          BuiltIn

*** Variables ***
#Test Environment
${base_url}             https://reqres.in
${end_point}            /api/users
${users}                /api/users?page=2

${base_url_xml}         http://thomas-bayer.com
${end_point_xml}        /sqlrest/CUSTOMER/15

#Fat Environment
${fat_base_url}         https://reqres.in
${fat_end_point}        /api/users

#Prod Environment
${prod_base_url}        https://reqres.in
${prod_end_point}       /api/users