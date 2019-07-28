*** Settings ***
Library    SeleniumLibrary 
Default Tags    Sanity
  
*** Test Cases ***
My First Test
    Log    Hello World....   
My Second Test
    Log    This is my second test 
My Third Test
    Log    This is my third Test  
My Fourth Test
    Log    This is my Fourth Test        
First Selenium Test
    [Tags]    smoke
    Open Browser    https://www.google.com  chrome   
    Set Browser Implicit Wait    5
    Input Text    name=q    wildlife
    Click Button  name=btnK
    Sleep    10
    Close Browser
    Log    Test Completed
    
Sample Login Test   [Documentation]    This a sample login test
    Open Browser    ${URL}  chrome
    Set Browser Implicit Wait    5
    LoginKW    
    Click Element   id=welcome  
    Click Element   link=Logout
    Log             Test Completed
    Log             This test is executed by %{username} and by %{os}
    [Tags]  smoke
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}   Admin   admin123
&{LOGINDATA}  username=Admin  password=admin123 

*** Keywords ***
LoginKW
    Input Text      id=txtUsername    @{CREDENTIALS}[0]
    Input Password  id=txtPassword    &{LOGINDATA}[password]   
    Click Button    id=btnLogin

