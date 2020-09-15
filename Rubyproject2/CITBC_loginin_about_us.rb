require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox

driver.manage.timeouts.implicit_wait = 10
driver.get'http://www.columbusitbootcamp.com/'

driver.manage.window.maximize

driver.find_element(:link_text, "ABOUT US").click
