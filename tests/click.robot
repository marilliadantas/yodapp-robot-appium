*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Deve realizar um click simples
    Open Application     http://localhost:4723
    ...                  platformName=Android
    ...                  deviceName=Android Emulator
    ...                  automationName=UIAutomator2
    ...                  app=${EXECDIR}/app/yodapp-beta.apk
    ...                  udid=emulator-5554
    ...                  autoGrantPermissions=true


    Wait Until Page Contains         Yodapp              10

    Click Text    QAX

    Sleep    5

    Close Application