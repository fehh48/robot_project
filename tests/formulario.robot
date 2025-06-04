*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot
Resource    ../resources/setup_teardown.robot

Suite Setup     Abrir navegador
Suite Teardown  Fechar navegador

*** Test Cases ***
Cadastro de colaborador com dados válidos
    Preencher formulário com dados    Felipe    Boss    Front-End
    Validar colaborador criado

*** Test Cases ***
Cadastro em massa de colaboradores
    FOR    ${nome}    ${cargo}    ${time}    IN
    ...    Felipe    QA    Front-End
    ...    Maria     Dev   Mobile
    ...    João      Tester    Mobile
    ...    Ana       PM     Programação
    ...    Lucas     Designer    Devops
        Preencher formulário com dados    ${nome}    ${cargo}    ${time}
        Validar colaborador criado
    END






