*** Settings ***
Library                                 SeleniumLibrary

*** Variables ***
${URL}                                  http://gldashboards.newpost.com/devices/overview

*** Keywords ***
Abrir o navegador
    Open Browser                        browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser    

Dado que estou na tela inicial do menu
    Go To    url=${URL}
    Input Text                          locator=//input[contains(@type,'email')]    text=qa.smart@grouplinknetwork.com
    Input Password                      locator=//input[@name='password']           password=teste 
    Click Button                        locator=//button[contains(.,'log in')]   
    

Então devo ver o avatar exibido corretamente na página
    Wait Until Page Contains Element    locator=//div[@class='MuiAvatar-root MuiAvatar-circular MuiAvatar-colorDefault css-19cinkl'][contains(.,'PL')]
    Click Button                        locator=//button[contains(.,'PL')]
    Page Should Contain Image           locator=//img[@src='https://e1.pxfuel.com/desktop-wallpaper/778/87/desktop-wallpaper-linux-penguin-linux-windows.jpg']
    Page Should Contain Element         locator=//h5[contains(.,'Pinguim Linux')]
    Page Should Contain Element         locator=//h6[contains(.,'pinguimdolinux@grouplinknetwork.com')]
    Page Should Contain Element         locator=//li[contains(.,'Account settings')]
    Page Should Contain Element         locator=//li[contains(.,'Log out')]

E o avatar possui um valor de classe incomum "css-19cinkl"
    Dado que estou na tela inicial do menu
    Wait Until Page Contains Element    xpath=//div[@class='MuiAvatar-root MuiAvatar-circular MuiAvatar-colorDefault css-19cinkl']
    ${avatar_visible}    Get Element Attribute    xpath=//div[@class='MuiAvatar-root MuiAvatar-circular MuiAvatar-colorDefault css-19cinkl']   class

Então devo ver o avatar sendo exibido corretamente na página
    Element Text Should Be              locator=//div[@class='MuiAvatar-root MuiAvatar-circular MuiAvatar-colorDefault css-19cinkl']    expected=PL        
  