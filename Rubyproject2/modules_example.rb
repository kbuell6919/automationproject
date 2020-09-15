require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.manage.window.maximize

driver.get "https://www.allstate.com"

search_textbox = driver.find_element(:xpath,"//input[@class='keywords']")

search_textbox.send_keys("selenium")
