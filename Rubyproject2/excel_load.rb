require 'selenium/webdriver'
require 'simple-spreadsheet'
excel_data = SimpleSpreadsheet::Workbook.read("login_data.xlxs")


def cell(row, col, sheet=nil)
  sheet = @engine.default_sheet if sheet.nil?
  if sheet.is_a? Integer
    @engine.cell(row, col, @engine.sheets[sheet - 1])
  else
    engine_cell = @engine.cell(row, col, sheet)
  end
end

user_name = excel_data.cell(2,1,nil )

password = excel_data.cell(2,2)


driver = Selenium::WebDriver.for :firefox

driver.manage.window.maximize

driver.get "http://www.demo.guru99.com/test/newtours/"

username = driver.find_element(:xpath,"//input[@name = 'userName']")

username.send_keys("user_name")

password = driver.find_element(:xpath,"//input[@name = 'password']")

password.send_keys("pwd")

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


