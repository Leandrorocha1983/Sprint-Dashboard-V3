*** Settings ***
Documentation    Essa suíte testa o menu avatar do site Dashboard Grouplink
Resource                 grouplink_menu_resources.robot
Test Setup               Abrir o navegador
Test Teardown            Fechar o navegador


*** Test Cases ***
# Casos de teste de sucesso
Cenário: Exibir avatar ausente na tela inicial do menu
    [Documentation]    Esse teste verifica o menu avatar com primeira lentra do nome e sobrenome
    ...                do site da Dashboard Grouplink.
    [Tags]             menu avatar com sucesso
    Dado que estou na tela inicial do menu
    Então devo ver o avatar exibido corretamente na página
 
# Casos de teste de limites dos valores de entrada
Cenário: Exibir avatar na tela inicial do menu com valores extremos
    [Documentation]    Esse teste verifica o menu avatar valor da classe
    ...                do site da Dashboard Grouplink.
    [Tags]             menu avatar limites dos valores de entrada
    Dado que estou na tela inicial do menu
    E o avatar possui um valor de classe incomum "css-19cinkl"
    Então devo ver o avatar sendo exibido corretamente na página