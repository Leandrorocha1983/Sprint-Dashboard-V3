*** Settings ***
Documentation    Essa suíte testa o menu avatar do site Dashboard Grouplink
Resource               grouplink_clonar_funcionalidade_dos_settings_resources.robot
Test Setup             Abrir o navegador 
Test Teardown          Fechar o navegador 


*** Test Cases ***
Cenário: Usuário visualiza as configurações do perfil  
    Dado que o usuário esteja logado
    # Quando o usuário acionar o botão Settings no menu lateral  
    # Então o sistema deve exibir a tela “Settings - Overview”  

Cenário: Usuário visualiza o card "Edit profile"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe a tela “Settings - Overview”  
    # Então o sistema deve exibir o card “Edit profile”  

 
Cenário: Exibir nome completo do usuário  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Edit profile”  
    # Então o sistema deve exibir o nome completo do usuário  

 

Cenário: Exibir e-mail corporativo do usuário  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Edit profile”  
    # Então o sistema deve exibir o e-mail corporativo do usuário  

 

Cenário: Exibir cargo do usuário  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Edit profile”  
    # Então o sistema deve exibir o cargo do usuário  

 

Cenário: Exibir nome da organização do usuário  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Edit profile”  
    # Então o sistema deve exibir o nome da organização do usuário  

 

Cenário: Exibir endereço residencial do usuário  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Edit profile” 
    # Então o sistema deve exibir o endereço residencial do usuário  

 

Cenário: Exibir botão "Edit profile"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe a tela “Settings - Overview”  
    # Então o sistema deve exibir o botão “Edit profile”  

 

Cenário: Exibir card "This session"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe a tela “Settings - Overview”  
    # Então o sistema deve exibir o card “This session”  

 

Cenário: Exibir data e hora do último acesso  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “This session”  
    # Então o sistema deve exibir a data, hora e o último acesso  

 

Cenário: Exibir botão "See access history"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe a tela “Settings - Overview”  
    # Então o sistema deve exibir o botão “See access history”  

 

Cenário: Exibir card "Security"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe a tela “Settings - Overview”  
    # Então o sistema deve exibir o card “Security”  

 

Cenário: Exibir última atualização de "Login & Security"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Security”  
    # Então o sistema deve exibir a última atualização de “Login & Security”  

Cenário: Exibir botão "Update password"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Security”  
    # Então o sistema deve exibir o botão “Update password”  

 

Cenário: Exibir botão "Privacy"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Security”  
    # Então o sistema deve exibir o botão “Privacy” 

 

Cenário: Exibir botão "Terms"  
    Dado que o usuário esteja logado  
    # Quando o sistema exibe o card “Security”  
    # Então o sistema deve exibir o botão “Terms” 