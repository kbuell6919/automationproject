require 'watir'

require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox

driver.manage.timeouts.implicit_wait = 10
driver.get'http://www.columbusitbootcamp.com/'

driver.manage.window.maximize

driver.find_element(:xpath, "//span[@class='style-k2aeyfbjlabel'][contains(text(),'START MY JOURNEY')]").click

#driver.switch_to.frame "htmlComp-iframe"
driver.find_element(:xpath, "//input[@name= 'firstname']").send_keys("Kevin")

