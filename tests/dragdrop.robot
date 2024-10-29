*** Settings ***
Resource   ../resources/base.resource
Library    ../resources/libs/extend.py

*** Test Cases ***
Deve arrastar o Skywalker e soltar no topo da lista
    Start session
    Get started
    Navigate to    Star Wars
    Go to item     Lista         Luke Skywalker

    ${origin}    Set Variable    ${ORIGIN_ELEMENT}
    ${target}    Set Variable    ${TARGET_ELEMENT}
    
    My Drag And Drop    ${origin}    ${target}
    
    Sleep    3

    Close session