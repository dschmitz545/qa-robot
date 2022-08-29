*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${url_route}               ${url}/login


*** Test Cases ***
Login com sucesso
    Go To                  ${url_route}
    Input Text             css:input[name='username']        stark
    Input Text             css:input[name='password']        jarvis!
    Click Element          class:btn-login
    Page Should Contain    Olá, Tony Stark. Você acessou a área logada!

Usuário não existe
    Go To                  ${url_route}
    Input Text             css:input[name='username']        stark2
    Input Text             css:input[name='password']        jarvis!
    Click Element          class:btn-login
    ${msg_display}=        Get WebElement                    id:flash
    Should Contain         ${msg_display.text}               O usuário informado não está cadastrado!

Senha Inválida
    Go To                  ${url_route}
    Input Text             css:input[name='username']        stark
    Input Text             css:input[name='password']        pwd123
    Click Element          class:btn-login
    ${msg_display}=        Get WebElement                    id:flash
    Should Contain         ${msg_display.text}               Senha é invalida!
