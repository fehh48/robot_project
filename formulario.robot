*** Settings ***
Library           SeleniumLibrary
Resource          keywords.robot
Resource          variables.robot

Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador

*** Test Cases ***
Cadastro de colaborador com dados válidos
    Preencher formulário com dados    Felipe    Boss    Front-End
    Validar colaborador criado
