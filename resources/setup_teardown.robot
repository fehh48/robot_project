*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir navegador
    Open Browser    http://localhost:3000/    chrome
    Maximize Browser Window
    Set Selenium Speed    0.3s

Fechar navegador
    Close Browser
