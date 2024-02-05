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

Dado que o usuário esteja autenticado no sistema  
    Go To                                 url=${URL}
E Clicar no "accept cookies policy"
    Click Element                         locator=${Get Cookies}

Quando o usuário acessa a barra lateral e clica em Settings
    Input Text                            locator=//input[@name='email']    text=qa.energy@grouplinknetwork.com
    Input Password                        locator=//input[@name='password']    password=fzveqtsdkukz
    Click Button                          locator=//button[contains(.,'log in')]
    Wait Until Page Contains Element      locator=//div[@class='MuiAvatar-root MuiAvatar-circular MuiAvatar-colorDefault css-19cinkl'][contains(.,'PL')]
    Click Button                          locator=//button[contains(.,'Settings')]

Então a tela Settings - Overview é exibida com sucesso
    Wait Until Page Contains Element      locator=//span[contains(.,'settings > overview')]
    Element Should Be Visible             locator=//span[contains(.,'Overview')]

Então o card "Edit profile" é exibido na tela Settings - Overview [RN001]  
    Element Should Be Visible             locator=//a[contains(.,'Edit profile')]
    Click Element                         locator=//a[contains(.,'Edit profile')]
    Element Should Be Visible             locator=//div[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 css-scwdp0']
    Element Should Be Visible             locator=//h5[contains(.,'Profile tips')]
    Element Should Be Visible             locator=//button[contains(.,'My Account')]
    
Então o nome completo, e-mail corporativo, cargo, nome da organização e endereço residencial do usuário são exibidos na tela Settings - Overview  
    Element Should Be Visible             locator=//span[contains(.,'settings > my account')]
    Element Should Be Visible             locator=//h1[contains(.,'My account')]
    Element Should Be Visible             locator=//legend[contains(.,'personal info')]
    Element Should Be Visible             locator=//label[contains(.,'First name')]
    Element Should Be Visible             locator=//label[contains(.,'Last name')]
    Element Should Be Visible             locator=//label[contains(.,'Email address')]
    Element Should Be Visible             locator=//label[contains(.,'Phone number')]
    Element Should Be Visible             locator=//legend[contains(.,'address')]
    Element Should Be Visible             locator=//label[contains(.,'Country/region​')]
    Element Should Be Visible             locator=//label[contains(.,'Street address')]
    Element Should Be Visible             locator=//label[contains(.,'Apt, suite. (optional)')]
    Element Should Be Visible             locator=//label[contains(.,'City')]
    Element Should Be Visible             locator=//label[contains(.,'State')]
    Element Should Be Visible             locator=//label[contains(.,'Zip code')]
    Element Should Be Visible             locator=//legend[contains(.,'organization')]
    Element Should Be Visible             locator=//label[contains(.,'Job title')]
    Element Should Be Visible             locator=//label[contains(.,'Company')]
    Element Should Be Visible             locator=//button[contains(.,'update profile')]
    Element Should Be Visible             locator=//p[contains(.,'© 2024 Group Link™. All rights reserved')]
    Element Should Be Visible             locator=//a[contains(.,'Privacy')]
    Element Should Be Visible             locator=//a[contains(.,'Terms')]
    
