## Selenium Ruby Unit Test Template with Page Object Model

To automate [Selenium Webdriver](https://docs.seleniumhq.org/projects/webdriver/) binaries management in runtime am using [webdrivermanager](https://github.com/jeffnyman/webdriver_manager), an excellent library by [jeffnyman](https://github.com/jeffnyman) 

### How to use?
Create the Page Objects of your Web application under **_lib/pageobjects_** package, call those Page Objects in tests under **_test_** package (Sample Page Objects, testcase included in this template)

### How to run?
To install the dependencies issue the below command in project root directory
```javascript
bundler install
```
To run the tests issue the below commands in project root directory
 
```javascript
ruby -Ilib:test test/my_test.rb 
```
By default it runs in Chrome browser, you can specify which browser to use as well
```javascript
ruby -Ilib:test test/my_test.rb firefox
```
Currently browsers added in this template are
* chrome
* firefox
* edge
* ie

> Feel free to modify it to your own needs :)