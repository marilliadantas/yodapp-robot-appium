*** Settings ***
Resource    ../resources/main.robot

*** Test Cases ***
Deve marcar as tags que usam Appium
    
    Start session
    Get started
    Navigate to     Check e Radio
    Go to item      Checkbox           Marque as techs que usam Appium
    
    @{techs}        Create List        Ruby   Python   Java    Javascript   C#   Robot Framework

    FOR    ${tech}   IN   @{techs}
        Click Element                  ${TECH_CHECKBOX}
        Sleep    1
    END

    Sleep    3
    
    Close session