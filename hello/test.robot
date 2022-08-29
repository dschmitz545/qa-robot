*** Settings ***
Library     ola.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${retorno}=    Welcome    Diego
    Should Be Equal    ${retorno}    Olá Diego, bem vindo, parece que está tudo bem com a instalação