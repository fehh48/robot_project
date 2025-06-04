*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://localhost:3000/
${BROWSER}    Chrome

*** Test Cases ***
Validar Que O Card Não É Criado Com Nome Em Branco
    [Tags]    negativo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text    id:form-cargo    QA Tester
    Input Text    id:form-imagem   https://picsum.photos/200/300
    Click Element   class:lista-suspensa
    Click Element   //option[contains(.,'Front-End')]
    Click Element   id:form-botao
    Sleep    2s

    Element Should Not Be Visible    class:colaborador
    [Teardown]    Close Browser
