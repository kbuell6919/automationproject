require 'selenium/webdriver'

driver = Selenium::WebDriver. for :firefox

driver.manage.window.maximize

driver.get "https://www.orbitz.com"

wait = Selenium::WebDriver::Wait.new(:timeout =>5)
wait.until {driver.find_element(:xpath, "//span[@class='icon icon-packages-double']")}.click

departing_textbox = driver.find_element(:xpath, "//input[@id='package-departing-hp-package']").click

wait = Selenium::WebDriver::Wait.new(:timeout =>15)
wait.until {driver.find_element(:xpath, "//table[@class= 'datepicker-cal-weeks']")}

curent_calendar = driver.find_element(:xpath, "//table[@class= 'datepicker-cal-weeks']")

column_calendar = curent_calendar.find_elements(:tag_name, "td")

select_day = 24

column_calendar.each { |day|
  # puts day.text
if day.text == "24"
  day.find_element(:xpath, "//button[contains(text(),'#{select_day}')]").click
break
 end
}
