*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   https://www.amazon.in/





*** Test Cases ***
openBrowser
    open browser    ${url}   ${browser}
    Maximize Browser Window

    @{windowTitles}=  Get Window Titles
    log to console  @{windowTitles}


searchForMobiles
    input text    id:twotabsearchtextbox  mobiles
    click element  id:nav-search-submit-text

applyFilters
    set selenium speed  3 seconds
    click element  xpath://*[@id='p_85/10440599031']/span/a/div/label/i
    click element  xpath://*[@id='p_89/Redmi']/span/a/div/label/i
    click element  xpath://*[@id='p_36/1318506031']/span/a/span
    click element  xpath://*[@id='p_n_is_cod_eligible/4931671031']/span/a/div/label/i
    click element  xpath://*[@id='search']/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a/span


selectFirstProduct
    ${win1}=                Select Window    NEW
    click element           xpath://input[@id="add-to-cart-button"]
    close window
    Select Window           ${win1}


selectSecondProduct

    click element  xpath://*[@id='search']/div[1]/div[2]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a/span
    ${win1}=                Select Window    NEW
    click element           xpath://input[@id="add-to-cart-button"]
    close window
    Select Window           ${win1}

gotoCart
    click element           xpath://div[@id="nav-cart-count-container"]
    click element           xpath://span[@id="sc-buy-box-ptc-button"]

login
    input text    xpath://*[@id='ap_email']      hemakeswani27@gmail.com
    click element    xpath://*[@id='continue']
    input text    xpath://*[@id='ap_password']      hema1234
    click element  xpath://*[@id='signInSubmit']











