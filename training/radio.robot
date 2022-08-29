*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${url_route}        ${url}/radios
${radio_group}    movies


*** Test Cases ***
Selecionando por id
    Go To                             ${url_route}
    Select Radio Button               ${radio_group}            cap
    Radio Button Should Be Set To     ${radio_group}            cap

Selecionando por value
    Go To                             ${url_route}
    Select Radio Button               ${radio_group}            guardians
    Radio Button Should Be Set To     ${radio_group}            guardians