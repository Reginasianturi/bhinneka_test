*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}          https://www.bhinneka.com/promo/flash-sale
${Browser}      Chrome
${Item}         xpath://p[.='SENNHEISER Gaming Headset GSP 107']
${Email}        reginaguv@gmail.com
${Password}     Girl1907!

*** Test Cases ***
Adding Product from Flas-Sale
    Open Browser                        ${URL}                          ${Browser}
    maximize browser window
    wait until element is visible       ${Item}
    mouse over                          ${Item}
    click element                       ${Item}
    wait until element is visible       id:atc
    click element                       id:atc
    wait until element is visible       xpath: //div[@class='swal-text']
    click button                        xpath://button[@class='swal-button swal-button--confirm']
    wait until element is visible       xpath://input[@id='email']
    input text                          id: email                        ${Email}
    click button                        id: next
    wait until element is visible       xpath://label[.='Password']
    click element                       class:ant-input
    input text                          class:ant-input                  ${Password}
    click element                       xpath: //*[@id="root"]/div/div/div/div/div/div/div[2]/div/div[3]/div/div/form/button
    wait until element is visible       id:atc      10
    click element                       id:atc
    wait until element is visible       xpath://h5[@class='modal-title']
    click button                        id:goToCart
    sleep                               5
    Close browser


*** Keywords ***
