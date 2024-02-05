*** Settings ***
Documentation        Essa suite testa o login da dashboard V3.0.0
Resource             grouplink_overview_resources.robot
Test Setup           Abrir o navegador 
Test Teardown        Fechar o navegador  


*** Test Cases ***

Cenário: Exibição da tela Settings - Overview após realização do login com sucesso  
    Dado que o usuário esteja autenticado no sistema   
    # E Clicar no "accept cookies policy"
    Quando o usuário acessa a barra lateral e clica em Settings      
    Então a tela Settings - Overview é exibida com sucesso

 

Cenário: Exibição do card "Edit profile" na tela Settings - Overview  
    Dado que o usuário esteja autenticado no sistema  
    Quando o usuário acessa a barra lateral e clica em Settings  
    Então o card "Edit profile" é exibido na tela Settings - Overview [RN001]

 

Cenário: Exibição das informações de perfil do usuário na tela Settings - Overview  
    Dado que o usuário esteja autenticado no sistema  
    Quando o usuário acessa a barra lateral e clica em Settings  
    Então o nome completo, e-mail corporativo, cargo, nome da organização e endereço residencial do usuário são exibidos na tela Settings - Overview

 

# Cenário: Verificação da existência do botão "Edit profile" na tela Settings - Overview  
#     Dado que o usuário esteja autenticado no sistema  
#     Quando o usuário acessa a barra lateral e clica em Settings  
#     Então o botão "Edit profile" é exibido na tela Settings - Overview [RN002]  

 

# Cenário: Exibição do card "This session" na tela Settings - Overview  
#     Dado que o usuário esteja autenticado no sistema  
#     Quando o usuário acessa a barra lateral e clica em Settings  
#     Então o card "This session" é exibido na tela Settings - Overview [RN003]  

 

# Cenário: Verificação da exibição do mês, dia, ano e hora do último acesso na tela Settings - Overview  
#     Dado que o usuário esteja autenticado no sistema  
#     Quando o usuário acessa a barra lateral e clica em Settings  
#     Então o mês, dia, ano e hora do último acesso são exibidos na tela Settings - Overview  

 

# Cenário: Verificação da existência do botão "See access history" na tela Settings - Overview  
#     Dado que o usuário esteja autenticado no sistema  
#     Quando o usuário acessa a barra lateral e clica em Settings  
#     Então o botão "See access history" é exibido na tela Settings - Overview [RN004]  

 

# Cenário: Exibição do card "Security" na tela Settings - Overview  
#     Dado que o usuário esteja autenticado no sistema  
#     Quando o usuário acessa a barra lateral e clica em Settings  
#     Então o card "Security" é exibido na tela Settings - Overview  

 

# Cenário: Verificação da última atualização de "Login & Security" na tela Settings - Overview  
#     Dado que o usuário esteja autenticado no sistema  
#     Quando o usuário acessa a barra lateral e clica em Settings  
#     Então a última atualização de "Login & Security" é exibida na tela Settings - Overview  

 

 

 

# Cenário: Verificação da existência do botão "Update password" na tela Settings - Overview  
#     Dado que o usuário esteja autenticado no sistema  
#     Quando o usuário acessa a barra lateral e clica em Settings  
#     Então o botão "Update password" é exibido na tela Settings - Overview  

 

# Cenário: Verificação da existência dos botões "Privacy" e "Terms" na tela Settings - Overview  
#     Dado que o usuário esteja autenticado no sistema  
#     Quando o usuário acessa a barra lateral e clica em Settings  
#     Então os botões "Privacy" e "Terms" são exibidos na tela Settings - Overview 