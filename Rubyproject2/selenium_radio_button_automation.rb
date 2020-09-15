require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox

driver.manage.window.maximize

driver.get "http://www.demo.guru99.com/test/newtours/"

username = driver.find_element(:xpath,"//input[@name = 'userName']")

username.send_keys("selenium")

password = driver.find_element(:xpath,"//input[@name = 'password']")

password.send_keys("selenium")

sign_in_btn = driver.find_element(:name, "submit").click

wait = Selenium::WebDriver::Wait.new(:timeout =>10)
wait.until {driver.find_element(:xpath, "//td[@width='80'][contains(text(),'Flights')]")}
puts driver.title

#if driver.title.downcase == 'flight finder'
##else
# raise "Test failed"
#end

one_way_radio_btn = driver.find_element(:xpath, "//input[@name='tripType'][@vaulue='oneway']").click

passenger_dropdown = driver.find_element(:xpath, "//select[@name='passCount']")
passenger_dropdown_options =passenger_dropdown.find_elements(:tag_name, "options")

passenger_dropdown_options.each{ |option| option.click if option.text == '3' }