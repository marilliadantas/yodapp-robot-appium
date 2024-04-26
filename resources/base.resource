*** Settings ***
Library    AppiumLibrary

*** Variables ***
${START}            QAX

*** Keywords ***
Start session
    Open Application     http://localhost:4723
    ...                  platformName=Android
    ...                  deviceName=Android Emulator
    ...                  automationName=UIAutomator2
    ...                  app=${EXECDIR}/app/yodapp-beta.apk
    ...                  udid=emulator-5554
    ...                  autoGrantPermissions=true

Get started
    Wait Until Page Contains         ${START}         10          
    Click Text                       ${START}

 Navigate to 
    [Arguments]      ${item_text}
    ${hamburger}     Set Variable    //android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${hamburger}     10
    Click Element                    ${hamburger}

    ${menu_item}    Set Variable     xpath=//*[@resource-id="com.qaxperience.yodapp:id/tvItemTitle"][@text="${item_text}"] 

    Wait Until Element Is Visible    ${menu_item}     10
    Click Element                    ${menu_item}

Go to item
    [Arguments]     ${item}          ${checkpoint}
    Wait Until Page Contains         ${item}    5
    Click Text                       ${item}
    Wait Until Page Contains         ${checkpoint}

Test body
    Click Text                       CLIQUE SIMPLES
    Wait Until Page Contains         Isso é um clique simples

Close session
    Close Application