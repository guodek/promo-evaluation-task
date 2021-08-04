# Promo.com evaluation task
Evaluation task made for Promo.com recruitment process

## Frameworks used
* Robot Framework with Selenium library
## Setup needed
### 1. Download python
Install Python at [here](https://www.python.org/downloads/)
### 2. Install Robot Framework
```
pip install robotframework
```
### 3. Install Selenium Library
```
pip install --upgrade robotframework-seleniumlibrary
```
### 4. (Optional) Download webdrivers and add them to PATH

Chrome webdriver is used by default in this test suite. You can download it here: 
[Chrome webdriver](https://sites.google.com/a/chromium.org/chromedriver/downloads)

### 5. Add VALID EMAIL and VALID PASSWORD variables in resources/test-variables.robot

Login data used when creating this assignment can be found in the PDF file that came with it

### 6. Run the test suite
```
robot test-cases
```

