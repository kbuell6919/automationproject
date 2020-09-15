require 'selenium/webdriver'
require 'yaml'
config_data =YAML.load(File.read('config.yaml'))
yaml_data= YAML.load(File.read('record.yaml'))

#puts yaml_data
#puts yaml_data.class
#puts config_data
#puts config_data.class

browser_type = config_data['browser']
record_type = config_data['record']
#puts"________________________"
#puts browser_type
#{p}"uts browser_type.class
#puts record_type
#puts record_type.class

record_arr =record_type.split(",")
#puts record_arr.class
#print record_arr

record_arr.each { |record|
  username_value = yaml_data[record]['username']
  password_value = yaml_data[record]['password']

  driver = Selenium::WebDriver.for :"#{browser_type}"

  driver.manage.window.maximize

  driver.get "http://www.demo.guru99.com/test/newtours/"

  username = driver.find_element(:xpath,"//input[@name = 'userName']")

  username.send_keys("username_value")

  password = driver.find_element(:xpath,"//input[@name = 'password']")

  password.send_keys("password_value")

  sign_in_btn = driver.find_element(:name, "submit").click

  flight_btn = driver.find_element(:xpath, "//a[@href='reservation.php'][contains(.,'Flights')]")
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

  one_way_radio_btn = driver.find_element(:xpath, "//input[@name= 'tripType'][@value= 'oneway']").click

  passenger_dropdown = driver.find_element(:xpath, "//select[contains(@name,'passCount')]")
  passenger_dropdown_option = passenger_dropdown.find_elements(:tag_name, "option")

  passenger_dropdown_option.each{ |option| option.click if option.text == '4'}


}




