*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Deve mostrar o título da Página
    Title Should Be     Training Wheels Protocol
