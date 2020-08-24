*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}               https://www.bhinneka.com
${Browser}           Chrome
${Email}             reginaguv@gmail.com
${Password}          Girl1907!
${Search-Keyword}    Laptop
${Item}              css: a[href='https://www.bhinneka.com/relion-notebook-tx387-sku3316424084']

*** Test Cases ***
Adding Product From Search Box
    Open Browser                        ${URL}                           ${Browser}
    maximize browser window
    click element                       xpath: //*[@id="bt-header"]/div/div/div[4]/a
    input text                          id: email                        ${Email}
    click button                        id: next
    wait until element is visible       xpath://label[.='Password']
    click element                       class:ant-input
    input text                          class:ant-input                  ${Password}
    click element                       xpath: //*[@id="root"]/div/div/div/div/div/div/div[2]/div/div[3]/div/div/form/button
    wait until element is enabled       xpath://div[@class='row main-menu-merchant']//input[@class='bt-search-suggestion__input']
    click element                       xpath://div[@class='row main-menu-merchant']//input[@class='bt-search-suggestion__input']
    input text                          xpath://div[@class='row main-menu-merchant']//input[@class='bt-search-suggestion__input']       ${Search-Keyword}
    wait until element is visible       ${Item}
    click element                       ${Item}
    wait until element is visible       id:atc
    click element                       id:atc
    wait until element is visible       xpath://h5[@class='modal-title']
    click button                        id:goToCart
    sleep                               5
    Close browser
*** Keywords ***
