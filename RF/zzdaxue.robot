*** Settings ***
Library  Selenium2Library
Resource           ./variables.robot
Resource           ./keywords.robot
Test Setup   open browser google   ${zzdaxue_url}

*** Test Cases ***
case01
     select frame   frmaename  #切换frame
     mouse over     xpath=院系专业的xpath   #鼠标移动
     ${windowsCount}  list windows    #获取当前窗口个数，个数值返回给windowsCount,返回列表
     ${newwinow}      evaluate  ${windowsCount}[2]
     select window    ${newwinow}

