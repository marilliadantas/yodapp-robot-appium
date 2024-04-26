*** Settings ***
Resource   ../resources/base.resource

*** Test Cases ***
Deve logar com sucesso
    Start session
    Get started
    Navigate to                    Formulários
    Go to item                     Login                                      Olá Padawan, vamos testar o login?

    Input Text                     id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
    Input Text                     id=com.qaxperience.yodapp:id/etPassword    jedi
    Click Element                  id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains       Boas vindas, logado você está.             10

    Close session

Não deve logar com email incorreto
    Start session
    Get started
    Navigate to                    Formulários
    Go to item                     Login                                       Olá Padawan, vamos testar o login?

    Input Text                     id=com.qaxperience.yodapp:id/etEmail        teste@qax.com
    Input Text                     id=com.qaxperience.yodapp:id/etPassword     jedi
    Click Element                  id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains       Oops! Credenciais incorretas.               10

    Close session

Não deve logar com senha incorreta
    Start session
    Get started
    Navigate to                    Formulários
    Go to item                     Login                                       Olá Padawan, vamos testar o login?

    Input Text                     id=com.qaxperience.yodapp:id/etEmail        yoda@qax.com
    Input Text                     id=com.qaxperience.yodapp:id/etPassword     sith
    Click Element                  id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains       Oops! Credenciais incorretas.               10

    Close session

Não deve logar com email em branco
    Start session
    Get started
    Navigate to                    Formulários
    Go to item                     Login                                      Olá Padawan, vamos testar o login?

    Clear Text                     id=com.qaxperience.yodapp:id/etEmail       
    Input Text                     id=com.qaxperience.yodapp:id/etPassword    jedi
    Click Element                  id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains       Email válido você deve informar!           10

    Close session

Não deve logar com senha em branco
    Start session
    Get started
    Navigate to                   Formulários
    Go to item                    Login                                       Olá Padawan, vamos testar o login?

    Input Text                    id=com.qaxperience.yodapp:id/etEmail        yoda@qax.com
    Clear Text                    id=com.qaxperience.yodapp:id/etPassword             
    Click Element                 id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains      Uma senha você deve informar!               10

    Close session