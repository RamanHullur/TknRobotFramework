*** Settings ***
Documentation    Suite description
Library          BuiltIn

*** Variables ***
#Test Environment
${base_url}                 https://reqres.in
${end_point}                /api/users
${users}                    /api/users?page=2
${update_user}              /api/users/2

${base_url_xml}             http://thomas-bayer.com
${end_point_xml}            /sqlrest/CUSTOMER/15

${base_url_testingtool}     http://thetestingworldapi.com
${end_point_put}            /api/technicalskills/1



#Fat Environment
${fat_base_url}             https://reqres.in
${fat_end_point}            /api/users



#Prod Environment
${prod_base_url}            https://reqres.in
${prod_end_point}           /api/users