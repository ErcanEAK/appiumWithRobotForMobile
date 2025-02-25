*** Settings ***
Library             AppiumLibrary
Library             Process
Library    XML

*** Variables ***
${user1Email}       ercanakkaya86@hotmail.com
${user1Password}    123456
${ANDROID_APP}      C:\\Users\\user\\appiumWithRobotForMobile\\Beewa.apk
${appPackage}       com.roseance.book_me_place
${appActivity}      com.roseance.book_me_place.MainActivity

${allowButton}       id=com.android.permissioncontroller:id/permission_allow_button
${ıgnoreButton}     xpath=//android.widget.Button[@content-desc="IGNORE"]
${profileButton}     xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${loginButton}       xpath=//android.view.View[@content-desc="Login"]
${usernameField}     xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${passwordField}     xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[2]
${loginButtonLoginPage}     xpath=//android.widget.Button[@content-desc="Login"]
${BarbarPhase}       xpath=//android.widget.ImageView[@content-desc="Barber or Hair Dresser"]

*** Test Cases ***
Open Application and Handle Pop-ups
    Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    deviceName=emulator-5554    app=${ANDROID_APP}    appPackage=${appPackage}    appActivity=${appActivity}    automationName=UiAutomator2

    # Try to handle the allow button pop-up
    Run Keyword And Ignore Error    Handle Allow Button Pop-up

    # Try to handle the update notification pop-up
    Run Keyword And Ignore Error    Handle Update Notification Pop-up

    # Continue with the rest of the test
    Wait Until Page Contains Element    ${profileButton}    10s
    Click Element    ${profileButton}
    Wait Until Page Contains Element    ${loginButton}    10s
    Click Element    ${loginButton}
    Wait Until Page Contains Element    ${usernameField}    10s
    Wait Until Element Is Visible    ${usernameField}    10s
    Click Element    ${usernameField}
    Sleep    2s
    Input Text    ${usernameField}    ${user1Email}
    Sleep    2s
    Wait Until Page Contains Element    ${passwordField}    10s
    Wait Until Element Is Visible    ${passwordField}    10s
    Click Element    ${passwordField}
    Sleep    2s
 
    Input Text    ${passwordField}    ${user1Password}

    Sleep    2s
    Wait Until Page Contains Element    ${loginButtonLoginPage}    10s
    Click Element    ${loginButtonLoginPage}
    # Try to handle the allow button pop-up
        Run Keyword And Ignore Error    Handle Allow Button Pop-up
    Wait Until Page Contains Element    ${BarbarPhase}    20s
    Close Application

*** Keywords ***
Handle Allow Button Pop-up
    Wait Until Page Contains Element    ${allowButton}    10s
    Click Element    ${allowButton}

Handle Update Notification Pop-up
    Wait Until Page Contains Element    ${ıgnoreButton}    10s
    Click Element    ${ıgnoreButton}