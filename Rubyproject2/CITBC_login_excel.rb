require 'selenium/webdriver'
require 'simple-spreadsheet'
#excel_data = SimpleSpreadsheet::Workbook.read("login_data.xlxs")

driver = Selenium::WebDriver.for :firefox

driver.manage.timeouts.implicit_wait = 10
driver.get'http://www.columbusitbootcamp.com/'

driver.manage.window.maximize

driver.find_element(:link_text, "ABOUT US").click