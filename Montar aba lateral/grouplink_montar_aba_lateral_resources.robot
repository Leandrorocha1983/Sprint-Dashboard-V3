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

Dado que o usuário esteja na página inicial
    Go To    url=${URL}
    Input Text                              locator=//input[contains(@type,'email')]    text=qa.smart@grouplinknetwork.com
    Input Password                          locator=//input[@name='password']           password=teste 
    Click Button                            locator=//button[contains(.,'log in')]   
Quando clicar no botão "devices"
    Wait Until Page Contains Element        locator=(//span[contains(.,'Devices')])[1]
    # Element Should Be Visible             locator=//a[@class='active'][contains(.,'Devices')]     expected=Devices
    # Click Button                          locator=//button[contains(.,'Devices')]
    Click Button                            locator=//button[contains(.,'Device List')]
Então o sistema deve direcionar para a página "devices"
    Element Should Be Visible               locator=//h1[contains(.,'Events List')]
Quando clicar no botão "settings"
    Wait Until Page Contains Element        locator=//span[contains(.,'Settings')]
    Click Button                            locator=//button[contains(.,'Settings')]
Então o sistema deve direcionar para a página "overview"
    Element Should Be Visible               locator=//span[contains(.,'settings > overview')]
    Wait Until Page Contains Element        locator=${SubMenuLateral}
Quando o sistema deve apresentar um sub menu lateral com o logo "GLSmartRetail", botão "devices" e botão "settings"     
    Wait Until Page Contains Element        locator=${SubMenuLateral}
    Page Should Contain Image               locator=//img[contains(@alt,'GLSmartRetail Image')]