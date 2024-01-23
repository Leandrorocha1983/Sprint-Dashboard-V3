*** Settings ***
Documentation    Essa suíte testa o menu avatar do site Dashboard Grouplink
Resource               grouplink_montar_aba_lateral_resources.robot
Test Setup             Abrir o navegador
Test Teardown          Fechar o navegador


*** Test Cases ***
# Casos de teste de sucesso
Cenário: Acessar a página de devices ao clicar no botão
    [Documentation]    Esse teste verifica o submenu com aba lateral devices
    ...                do site da Dashboard Grouplink.
    [Tags]             Submenu aba lateral devices com sucesso
    Dado que o usuário esteja na página inicial 
    Quando clicar no botão "devices" 
    Então o sistema deve direcionar para a página "devices"

Cenário: Acessar a página de settings ao clicar no botão
    [Documentation]    Esse teste verifica o submenu com aba lateral settings
    ...                do site da Dashboard Grouplink.
    [Tags]             Submenu aba lateral settings com sucesso
    Dado que o usuário esteja na página inicial
    Quando clicar no botão "settings" 
    Então o sistema deve direcionar para a página "overview" 

Cenário: Verificar presença do sub menu lateral ao acessar a página inicial
    [Documentation]    Esse teste verifica o submenu com aba lateral logo GLSmartRetail
    ...                do site da Dashboard Grouplink.
    [Tags]             Submenu aba lateral logo GLSmartRetail com sucesso
    Dado que o usuário esteja na página inicial
    Quando o sistema deve apresentar um sub menu lateral com o logo "GLSmartRetail", botão "devices" e botão "settings" 