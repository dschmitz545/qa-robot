*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${url_route}                            ${url}/tables
${id_table}                             id:actors


*** Test Cases ***
Verifica o valor ao informar o número da linha
    Go To                             ${url_route}
    Table Row Should Contain          ${id_table}    1    $ 10.000.000
    Table Row Should Contain          ${id_table}    1    @robertdowneyjr

Descobre a linha pelo texto chave e valida demais valores
    Go To             ${url_route}
    ${target}=        Get WebElement        xpath:.//tr[contains(., '@chadwickboseman')]
    Log               ${target.text}
    Log To Console    ${target.text}
    Should Contain    ${target.text}        $ 700.000
    Should Contain    ${target.text}        Pantera Negra
