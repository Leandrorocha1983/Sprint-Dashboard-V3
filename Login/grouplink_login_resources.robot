*** Settings ***
Library                               SeleniumLibrary
Library                               FakerLibrary


*** Variables ***
${BROWSER}                            chrome
${URL}                                http://gldashboards.newpost.com/login
${Get Cookies}                        //h5[@class='MuiTypography-root MuiTypography-h5 css-i6vjuv'][contains(.,'accept all cookies')]
${DEVICES>OVERVIEW}                   //span[contains(.,'Devices > Overview')]    
${First_Name}                         //input[@type='email']


*** Keywords ***
Abrir o navegador    
    Open Browser                      browser=${BROWSER} 
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Dado que estou na tela de Login
    Go To                             url=${URL} 
E Clicar no "accept cookies policy"
    Click Element                     locator=${Get Cookies}
Quando digito um email válido
    Input Text                        locator=//input[@name='email']    text=qa.water@grouplinknetwork.com
Então permaneço no campo Email
    Page Should Contain               text=E-mail
Quando digito a senha cadastrada corretamente
    Quando digito um email válido
    Input Password                    locator=//input[@name='password']    password=fzveqtsdkukz
Então aciono o botão “Login” 
    Click Button                      locator=//button[contains(.,'log in')]
Quando preencho corretamente os campos Email e Password
    Quando digito um email válido
    Quando digito a senha cadastrada corretamente
Então sou direcionada para tela Dashboard - Smart Retail
    Então aciono o botão “Login”
    Wait Until Element Is Visible    locator=${DEVICES>OVERVIEW}
E esqueci minha senha aciono a função “Forgot your password?”
    Click Element                    locator=//a[contains(.,'Forgot your password?')]
Quando sou direcionada para tela “Forgot your password?”
    Wait Until Element Is Enabled    locator=//h1[contains(.,'Forgot your password?')]
E preencho o campo Email 
    ${E-mail}                       FakerLibrary.Free Email   
    Input Text                      ${First_Name}    ${E-mail}  
E aciono o botão” Send reset password link”
    Click Button                    locator=//button[@type='submit']
# Então sou direcionada para o link para cadastrar uma nova senha
E estou na tela “Forgot your password?”
    E aciono o botão” Send reset password link”
Quando aciono o botão “Get back to login”
    Dado que estou na tela de Login
    Click Element                    locator=//a[contains(.,'Forgot your password?')]
    Click Element                    locator=//a[contains(.,'Get back to login')]
Então sou direcionada para tela de Login
    Wait Until Element Is Enabled    locator=//h1[contains(.,'Sign in to Group Link')]
    Page Should Contain              text=Sign in to Group Link

Quando aciono o link “Terms of Service”
    Dado que estou na tela de Login
    Quando digito um email válido
    Quando digito a senha cadastrada corretamente
    Então aciono o botão “Login” 
    Wait Until Element Is Visible    locator=//h1[contains(.,'Overview')]
    Click Element                    locator=//a[@href='/settings']
    Click Element     locator=//a[contains(.,'Terms')]

Quando aciono o link “Privacy Policy”
    Dado que estou na tela de Login
    Quando digito um email válido
    Quando digito a senha cadastrada corretamente
    Então aciono o botão “Login” 
    Wait Until Element Is Visible    locator=//h1[contains(.,'Overview')]
    Click Element                    locator=//a[@href='/settings']
    Click Element                    locator=//a[contains(.,'Privacy')]

E não preencho os campos obrigatórios: "Email e Password"
    Dado que estou na tela de Login
Quando aciono o botão Login
    Então aciono o botão “Login” 
Então é exibida a mensagem: "Enter a valid Email or Password"
    Page Should Contain              text=Invalid email address
    Page Should Contain              text=Password must be at least 1 characters
E Forgot your password? (Esqueceu a senha)
    E aciono o botão” Send reset password link”
E não preencho os campos obrigatórios: "Email"
    Page Should Contain              text=E-mail
Quando aciono o botão "Send reset password link"
    Click Button                     locator=//button[@type='submit']


    
    