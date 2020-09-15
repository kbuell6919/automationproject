require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox



driver.manage.window.maximize

driver.get "http://www.demo.guru99.com/test/newtours/"

username = driver.find_element(:xpath,"//input[@name = 'userName']")

username.send_keys("selenium")

password = driver.find_element(:xpath,"//input[@name = 'password']")

password.send_keys("selenium")

sign_in_btn = driver.find_element(:name, "submit").click

flight_btn = driver.find_element(:xpath, " //a[@href='reservation.php'][contains(.,'Flights')]")
flight_btn.click
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

passenger_dropdown = driver.find_element(:xpath, "//select[@name= 'passCount']")
passenger_dropdown_options = passenger_dropdown.find_elements(:tag_name, "option")

passenger_dropdown_options.each { |option| option.click if option.text == '4'}
