*** Settings ***
Resource   ../resources/base.resource

*** Test Cases ***
Deve poder remover o Mandaloriano
    Start session
    Get started

    Navigate to    Star Wars
    Go to item     Lista        Mandaloriano
    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="@mando"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}     Set Variable    ${positions}[x]
    ${start_y}     Set Variable    ${positions}[y]
    ${offset_x}    Evaluate        ${positions}[x] - 650
    ${offset_y}    Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}      1000

    Click Element                       id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Mandaloriano

    Close session

Deve poder remover o Darth Vader
    Start session
    Get started

    Navigate to    Star Wars
    Go to item     Lista        Darth Vader
    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}     Set Variable    ${positions}[x]
    ${start_y}     Set Variable    ${positions}[y]
    ${offset_x}    Evaluate        ${positions}[x] - 650
    ${offset_y}    Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}

    Click Element                       id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Darth Vader
    
    Close session

Deve poder remover o Princesa Leia
    Start session
    Get started

    Navigate to    Star Wars
    Go to item     Lista        Princesa Leia
    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="@leia"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}     Set Variable    ${positions}[x]
    ${start_y}     Set Variable    ${positions}[y]
    ${offset_x}    Evaluate        ${positions}[x] - 650
    ${offset_y}    Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}      1000

    Click Element                       id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Princesa Leia

    Close session

Deve poder remover o Luke Skywalker
    Start session
    Get started

    Navigate to    Star Wars
    Go to item     Lista        Luke Skywalker
    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="@skywalker"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}     Set Variable    ${positions}[x]
    ${start_y}     Set Variable    ${positions}[y]
    ${offset_x}    Evaluate        ${positions}[x] - 650
    ${offset_y}    Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}      1000

    Click Element                       id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Luke Skywalker

    Close session

Deve poder remover o Chewbacca
    Start session
    Get started

    Navigate to    Star Wars
    Go to item     Lista        Chewbacca
    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="@chewie"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}     Set Variable    ${positions}[x]
    ${start_y}     Set Variable    ${positions}[y]
    ${offset_x}    Evaluate        ${positions}[x] - 650
    ${offset_y}    Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}      1000

    Click Element                       id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Chewbacca

    Close session