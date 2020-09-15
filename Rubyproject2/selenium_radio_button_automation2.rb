require 'rubygems'

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

flight_btn = driver.find_element(:xpath=> "//a[@href='reservation.php']")
flight_btn.click

driver.switch_to.frame"flow_close_btn_iframe"
close_btn = driver.find_element(:xpath, "//div[contains(@id,'closeBtn')]").click
driver.switch_to.parent_frame

#puts driver.title

# driver.title == "Find a Flight: Mercury Tours:"
# puts "test passed"
#else
#end

radio_btn = driver.find_element(:xpath, "//input[@name='tripType'][@value='oneway']").click

passenger_dropdown = driver.find_element(:xpath, "//select[@name='passCount']").click

passenger_dropdown_options = passenger_dropdown.find_element(:tag_name,'options')

passenger_dropdown_options.each { |option| option.click if option.text =='4'}
