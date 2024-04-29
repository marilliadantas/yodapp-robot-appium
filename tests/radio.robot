*** Settings ***
Resource    ../resources/main.robot

*** Test Cases ***
Deve selecionar a opção em Javascript
    
    Start session
    Get started
    Navigate to     Check e Radio
    Go to item      Botões de radio          Escolha sua linguagem preferida

    Click Element   ${RADIO_BTN}

    Sleep    3
    
    Close session