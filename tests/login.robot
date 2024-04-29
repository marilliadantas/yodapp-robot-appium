*** Settings ***
Resource    ../resources/main.robot

*** Test Cases ***
Deve logar com sucesso
    Start session
    Get started
    Navigate to                    Formulários
    Go to item                     Login                                      Olá Padawan, vamos testar o login?

    Input Text                     ${EMAIL_INPUT}                             yoda@qax.com
    Input Text                     ${SENHA_INPUT}                             jedi
    Click Element                  ${ENTRAR_BTN}

    Wait Until Page Contains       Boas vindas, logado você está.             10

    Close session

Não deve logar com email incorreto
    Start session
    Get started
    Navigate to                    Formulários
    Go to item                     Login                                       Olá Padawan, vamos testar o login?

    Input Text                     ${EMAIL_INPUT}                              teste@qax.com
    Input Text                     ${SENHA_INPUT}                              jedi
    Click Element                  ${ENTRAR_BTN}

    Wait Until Page Contains       Oops! Credenciais incorretas.               10

    Close session

Não deve logar com senha incorreta
    Start session
    Get started
    Navigate to                    Formulários
    Go to item                     Login                                       Olá Padawan, vamos testar o login?

    Input Text                     ${EMAIL_INPUT}                              yoda@qax.com
    Input Text                     ${SENHA_INPUT}                              sith
    Click Element                  ${ENTRAR_BTN}

    Wait Until Page Contains       Oops! Credenciais incorretas.               10

    Close session

Não deve logar com email em branco
    Start session
    Get started
    Navigate to                    Formulários
    Go to item                     Login                                      Olá Padawan, vamos testar o login?

    Clear Text                     ${EMAIL_INPUT}       
    Input Text                     ${SENHA_INPUT}                             jedi
    Click Element                  ${ENTRAR_BTN}

    Wait Until Page Contains       Email válido você deve informar!           10

    Close session

Não deve logar com senha em branco
    Start session
    Get started
    Navigate to                   Formulários
    Go to item                    Login                                       Olá Padawan, vamos testar o login?

    Input Text                    ${EMAIL_INPUT}                              yoda@qax.com
    Clear Text                    ${SENHA_INPUT}            
    Click Element                 ${ENTRAR_BTN}

    Wait Until Page Contains      Uma senha você deve informar!               10

    Close session