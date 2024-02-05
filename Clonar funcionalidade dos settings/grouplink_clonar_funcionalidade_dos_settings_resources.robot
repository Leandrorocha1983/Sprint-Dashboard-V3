*** Settings ***
Library                                    SeleniumLibrary

*** Variables ***
${URL}                                     http://gldashboards.newpost.com/devices/overview
# ${Aba-Devices}                           //a[@class='active'][contains(.,'Devices')]
${SubMenuLateral}                          //ul[contains(.,'DevicesSettings')]

*** Keywords ***
Abrir o navegador
    Open Browser                           browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser    

Dado que o usuário esteja logado
    Go To    url=${URL}
    Input Text                              locator=//input[contains(@type,'email')]    text=qa.smart@grouplinknetwork.com
    Input Password                          locator=//input[@name='password']           password=teste 
    Click Button                            locator=//button[contains(.,'log in')]   