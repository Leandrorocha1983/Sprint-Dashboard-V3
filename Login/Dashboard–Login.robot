*** Settings ***
Documentation        Essa suite testa o login da dashboard V3.0.0
Resource             Dashboard-Login_resource.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador


*** Test Cases ***
Cenário 1: Validar campo Email
    Dado que estou na tela de Login
    # E Clicar no "accept cookies policy"
    Quando digito um email válido
    Então permaneço no campo Email

Cenário 2: Validar campo Password
    Dado que estou na tela de Login
    Quando digito a senha cadastrada corretamente
    Então aciono o botão “Login”

Cenário 3: Validar o acionamento do botão “log in”
    Dado que estou na tela de Login
    Quando preencho corretamente os campos Email e Password
    Então sou direcionada para tela Dashboard - Smart Retail

Cenário 4: Validar o acionamento do botão “Forgot your password?”
    Dado que estou na tela de Login
    E esqueci minha senha aciono a função “Forgot your password?”
    Quando sou direcionada para tela “Forgot your password?”
    E preencho o campo Email
    E aciono o botão” Send reset password link”
    # Então sou direcionada para o link para cadastrar uma nova senha

Cenário 5: Validar o acionamento do botão “Get back to login”
    Dado que estou na tela de Login
    E estou na tela “Forgot your password?”
    Quando aciono o botão “Get back to login”
    Então sou direcionada para tela de Login

Cenário 6: Validar o acionamento do link “Terms of Service”
    Dado que estou na tela de Login
    Quando aciono o link “Terms of Service”
    # Então sou para tela onde estão descritos os Termos e Condições

Cenário 7: Validar o acionamento do link “Privacy Policy”
    Dado que estou na tela de Login
    Quando aciono o link “Privacy Policy”
    # Então sou para tela onde estão descritos os Política de Privacidade

Cenário 8: Mensagem de Erro dos campos obrigatórios: Email e Password
    Dado que estou na tela de Login
    E não preencho os campos obrigatórios: "Email e Password"
    Quando aciono o botão Login
    Então é exibida a mensagem: "Enter a valid Email or Password"

Cenário 9: Mensagem de Erro dos campos obrigatórios: Email
    Dado que estou na tela de Login
    E Forgot your password? (Esqueceu a senha)
    E não preencho os campos obrigatórios: "Email"
    Quando aciono o botão "Send reset password link"
    # Então é exibida a mensagem: "Required field"
    