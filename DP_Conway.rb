require 'selenium/webdriver'

driver = Selenium::WebDriver.for :chrome

driver.get 'https://www.dpconway.com'

driver.manage.window.maximize

goto_afterlife = driver.find_element(:xpath, "//a[@id='comp-keq3ymiq-inner-button']//span[@class='stylablebutton643855516__label'][contains(text(),'Go To')]")
goto_afterlife.click
sleep(*3)

require 'selenium/webdriver'

driver = Selenium::WebDriver.for :safari

driver.get 'https://www.dpconway.com'

driver.manage.window.maximize

goto_afterlife = driver.find_element(:xpath, "//a[@id='comp-keq3ymiq-inner-button']//span[@class='stylablebutton643855516__label'][contains(text(),'Go To')]")
goto_afterlife.click
sleep(*3)

require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox

driver.get 'https://www.dpconway.com'

driver.manage.window.maximize

goto_afterlife = driver.find_element(:xpath, "//a[@id='comp-keq3ymiq-inner-button']//span[@class='stylablebutton643855516__label'][contains(text(),'Go To')]")
goto_afterlife.click
sleep(*3)