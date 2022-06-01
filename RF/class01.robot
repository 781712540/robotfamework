*** Settings ***
#导入一些库，资源文件，
Library  Selenium2Library



*** Test Cases ***
#存放所有的测试用例
case1  #用例名称
    log  hello world
    open browser    http://127.0.0.1:5000/   chrome


