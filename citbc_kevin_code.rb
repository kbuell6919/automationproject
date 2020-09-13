require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox

driver.manage.timeouts.implicit_wait = 10
driver.get'http://www.columbusitbootcamp.com/'

driver.manage.window.maximize

driver.find_element(:xpath, "//span[@class='style-k2aeyfbjlabel'][contains(text(),'START MY JOURNEY')]").click
driver.switch_to.frame driver.find_element(:xpath, "//iframe[@name='htmlComp-iframe']")
driver.find_element(:xpath, "//input[@name= 'firstname']").send_keys("Kevin")
driver.find_element(:xpath, "//input[contains(@name,'lastname')]").send_keys("Courtney is the coolest")
driver.find_element(:xpath, "//input[contains(@type,'email')]").send_keys("chris@columbusitbootcamp.com")
driver.find_element(:xpath,"//input[contains(@name,'mobile')]").send_keys("614-867-5309")
submit_btn = driver.find_element(:xpath,"//input[contains(@id,'vtigerFormSubmitBtn')]")
submit_btn.click
sleep(*5)




#driver.switch_to.frame "comp-k4pwnbwi"
#driver.find_element(:xpath, "//input[@name= 'firstname']").send_keys("Kevin")