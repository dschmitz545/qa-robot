*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão
Library    ../.venv/lib/python3.10/site-packages/robot/libraries/String.py

*** Variables ***
${url_route}                            ${url}/dropdown
${class_list}                         class:avenger-list
${id_list}                            id:dropdown

*** Test Cases ***
Selecionando por texto e validar por valor
    Go To                             ${url_route}
    Select From List By Label         ${class_list}                Scott Lang
    ${selected}=                      Get Selected List Value      ${class_list}
    Should Be Equal                   ${selected}                  7

Selecionando pelo valor e validar pelo texto
    Go To                             ${url_route}
    Select From List By Value         ${id_list}                     6
    ${selected}=                      Get Selected List Label        ${id_list}
    Should Be Equal                   ${selected}                    Loki
