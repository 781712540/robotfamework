*** Settings ***
Resource           ./variables.robot
Resource           ./page/homepage.robot
Library  Selenium2Library
*** Keywords ***
#常用的关键字封装:将经常需要绑定在一起的几步操作步骤封装成一个关键字，适用于所有的测试用例
open browser google
      [Arguments]    ${url}=${url}
      open browser      ${url}     chrome
      maximize browser window
loginweb
      click_element_until_present     ${loginButton}              #第二层封装
      input_element_until_present     ${usernameInput}    ${username}          #输入用户名
      input_element_until_present     ${passwordInput}    ${passwrod}          #输入密码
      click_element_until_present     ${signinButton}                            #点击sign in 按钮

click_element_until_present
      [Documentation]  直到页面出现元素，点击元素方法，参数为：元素的定位
      [Arguments]    ${locator}
      wait until element is visible     ${locator}  10
      click element   ${locator}

input_element_until_present
      [Documentation]  直到页面出现元素，输入元素方法，参数1为：元素的定位，参数2为元素的输入的值,函数的默认值：=''
      [Arguments]    ${locator}   ${value}=123456
      wait until element is visible     ${locator}   10
      input text     ${locator}    ${value}