*** Settings ***
Library    Selenium2Library
#Test Teardown    Close Browser


*** Variables ***
${browser}    chrome
${url}    https://www.google.co.th/
${keywords_search}      Robot Framework


*** Test Cases***
Search
    Open Chrome Browser 
    Search By Keywords
    Result


*** Keywords ***
Open Chrome Browser 
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Search By Keywords
    Input Text      name=q      ${keywords_search}
    Submit Form
Result
    Click Element       //h3[@class="LC20lb MBeuO DKV0Md"]
