*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***

Preencher formulário com dados
    [Arguments]    ${nome}    ${cargo}    ${time}
    Input Text     id:form-nome     ${nome}
    Input Text     id:form-cargo    ${cargo}
    Input Text     id:form-imagem   ${IMAGEM}
    Click Element  class:lista-suspensa
    Click Element  //option[contains(.,'${time}')]
    Click Element  id:form-botao
    Sleep          1s

Validar colaborador criado
    Element Should Be Visible    class:colaborador
    Sleep    3s
