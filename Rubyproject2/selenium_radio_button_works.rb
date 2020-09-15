require 'selenium-webdriver'


driver = Selenium::WebDriver.for :"firefox"

driver.manage.window.maximize

driver.get "http://www.demo.guru99.com/test/newtours/"

username = driver.find_element(:xpath,"//input[@name = 'userName']")

username.send_keys("selenium")

password = driver.find_element(:xpath,"//input[@name = 'password']")

password.send_keys("selenium")

sign_in_btn = driver.find_element(:name, "submit").click

driver.find_element(:xpath, "//link[@href='reservation.php'][contains(.,'Flights')]").click

sleep(3)

driver.switch_to.frame"flow_close_btn_iframe"
close_btn = driver.find_element(:xpath, "//div[contains(@id,'closeBtn')]").click
driver.switch_to.parent_frame

puts driver.title

if driver.title == "Find a Flight: Mercury Tours:"
  puts "test passed"
else
  raise "Test Failed"
end

one_way_radio_btn = driver.find_element(:xpath, "//input[@name= 'tripType'][@value= 'oneway']").click

passenger_dropdown = driver.find_element(:xpath, "//select[contains(@name,'passCount')]")
passenger_dropdown_option = passenger_dropdown.find_elements(:tag_name, "option")

passenger_dropdown_option.each{ |option| option.click if option.text == '4'}
