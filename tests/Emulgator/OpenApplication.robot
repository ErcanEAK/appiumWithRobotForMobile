*** Settings ***
Library             AppiumLibrary
Library             Process

*** Variables ***
#*** Test Variables ***
${user1Email}       ercanakkaya86@hotmail.com
${user1Password}    123456


#*** Login Page Variables ***
${allowButton}       id=com.android.permissioncontroller:id/permission_allow_button
${profileButton}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${loginButton}       //android.view.View[@content-desc="Login"]
${usernameField}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${passwordField}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[2]
${loginButtonLoginPage}     //android.widget.Button[@content-desc="Login"]
${BarbarPhase}       //android.widget.ImageView[@content-desc="Barber or Hair Dresser"]

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
    Click Element    ${usernameField}
    Input Text      ${usernameField}    ${user1Email}
    Click Element    ${passwordField}
    Input Password  ${passwordField}    ${user1Password}
    Wait Until Page Contains Element    ${loginButtonLoginPage}
    Click Element    ${loginButtonLoginPage}
    Wait Until Page Contains Element    ${BarbarPhase}
    Close Application

    
