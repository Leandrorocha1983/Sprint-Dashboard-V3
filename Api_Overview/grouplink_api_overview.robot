*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Verificar Período de 30 Dias
    [Documentation]    Verifica se a aplicação exibe corretamente os dados dos últimos 30 dias
    Create Session    Overview    http://url-da-sua-api.com

Dado que estou na tela Overview
    ${headers}    Create Dictionary    Content-Type=application/json
    ${body}    Create Dictionary    # Se houver necessidade de enviar dados no corpo da requisição

# Quando seleciono a opção de período de 30 dias
#     ${response}    Post Request    Overview    /selecionar_periodo    headers=${headers}    json=${body}
#     ${status_code}    ${response_status}    ${response.json()['status']}    # Supondo que a resposta contenha um campo 'status'

# Então a aplicação deve exibir os dados relativos aos últimos 30 dias
#     Should Be Equal As Strings      ${status_code}    200
#     ${data}    Convert To String    ${response.json()['data']}    # Supondo que a resposta contenha um campo 'data'
#     Log    Data: ${data}  # Para debug


#     Close All Sessions
