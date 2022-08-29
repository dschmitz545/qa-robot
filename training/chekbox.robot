*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão


*** Variables ***
${url_route}                           ${url}/checkboxes
${check_thor}                        id:thor
${check_iron}                        css:input[value='iron-man']
${check_panther}                     xpath://*[@id="checkboxes"]/input[7]


*** Test Cases ***
Marcando opção com ID
    Go To                             ${url_route}
    Select Checkbox                   ${check_thor}
    Checkbox Should Be Selected       ${check_thor}

Marcando Opção com CSS Selector
    [tags]                            ironman
    Go To                             ${url_route}
    Select Checkbox                   ${check_iron}
    Checkbox Should Be Selected       ${check_iron}

Marcando Opção com Xpath
    [tags]                            xpath
    Go To                             ${url_route}
    Select Checkbox                   ${check_panther}
    Checkbox Should Be Selected       ${check_panther}