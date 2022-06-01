*** Settings ***
#导入一些库，资源文件，用户自定义的文件，
#导入python: 先导入文件全名称，直接调用python函数，参数的使用和python一样
Library             Selenium2Library

Library  sendemail.py
Resource  ./variables.robot
Resource  ./keywords.robot
#Suite Setup                        #所有用例执行之前的前置操作
#Suite Teardown                     #所有用例执行之后的后置操作
Test Setup         open browser google          #每个用例执行之前的前置操作
Test Teardown      close browser                #每个用例执行之后的后置操作

*** Test Cases ***
caseName01
      loginweb           #登录测试网站
      element should be visible    xpath=//*[text()='welcome${username}']         #验证元素在页面出现
      element text should be    xpath=//*[contains(text(),'welcome')]   welcome${username}  #验证元素的文本值等于多少




