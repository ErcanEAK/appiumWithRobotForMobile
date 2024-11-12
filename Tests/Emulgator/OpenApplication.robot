*** Settings ***
Library             AppiumLibrary


*** Variables ***
${allowButton}       id=com.android.permissioncontroller:id/permission_allow_button
${profileButton}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${loginButton}       //android.view.View[@content-desc="Login"]
${usernameField}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]

*** Test Cases ***
Open Application
    Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    deviceName=emulgator-5554    appPackage=com.roseance.book_me_place    appActivity=MainActivity    automationName=UiAutomator2
    Wait Until Page Contains Element    ${allowButton}
    Click Element    ${allowButton}
    Wait Until Page Contains Element    ${profileButton}
    Click Element    ${profileButton}
    Wait Until Page Contains Element    ${loginButton}
    Click Element    ${loginButton}
    Wait Until Page Contains Element    ${usernameField}

    
