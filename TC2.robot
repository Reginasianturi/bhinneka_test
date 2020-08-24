*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}               https://www.bhinneka.com
${Browser}           Chrome
${Email}             reginaguv@gmail.com
${Password}          Girl1907!
${Category-menu}     xpath: //span[.='Kenormalan Baru']
${Sub-Category}      xpath: //span[.='Sabun']
${Item}              xpath: //a[@href='/nuvo-sabun-batang-76gr-red-sku3333555642']/div[@class='col-sm-9 bt-product-catalog-item__info']//p[.='NUVO Sabun Batang 76gr Red']


*** Test Cases ***
Adding Product From Category (Category Kenormalan Baru)
    Open Browser                         ${URL}                  ${Browser}
    maximize browser window
    click element                       xpath: //*[@id="bt-header"]/div/div/div[4]/a
    input text                          id: email                 ${Email}
    click button                        id: next
    wait until element is visible       xpath://label[.='Password']
    click element                       class:ant-input
    input text                          class:ant-input             ${Password}
    click element                       xpath: //*[@id="root"]/div/div/div/div/div/div/div[2]/div/div[3]/div/div/form/button
    wait until element is visible       xpath: //div[@class='row main-menu-merchant']//span[@class='pt-icon-large pt-icon-menu']
    mouse over                          xpath: //div[@class='row main-menu-merchant']//span[@class='pt-icon-large pt-icon-menu']
    wait until element is visible       ${Category-menu}            10
    mouse over                          ${Category-menu}
    wait until element is visible       ${Sub-Category}             10
    click element                       ${Sub-Category}
    wait until element is visible       ${Item}
    click element                       ${Item}
    wait until element is visible       id:atc
    click element                       id:atc
    wait until element is visible       xpath://h5[@class='modal-title']
    click button                        id:goToCart
    sleep                               5
    Close Browser
*** Keywords ***
