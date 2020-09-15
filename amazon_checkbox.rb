require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

#Maximize the window
driver.manage.window.maximize

#Navigate to the website
driver.get "https://www.amazon.com"
search_box = driver.find_element(:xpath, "//input[@id='twotabsearchtextbox']")

search_box.send_keys("beer")
search_btn = driver.find_element(:xpath, "//div[@class='nav-search-submit nav-sprite']")
search_btn.click
pantry_checkbox = driver.find_element(:xpath, "(//i[contains(@class,'a-icon a-icon-checkbox')])[3]")
pantry_checkbox.click
search_btn = driver.find_element(:xpath, "//div[@class='nav-search-submit nav-sprite']")
search_btn.click
sleep(*3)
puts "Test Passed"
#lettuce_checkbox = driver.find_element(:xpath, "//label[contains(.,'Lettuce')]")
#lettuce_checkbox.click
#lettuce_checkbox.click
#tomato_checkbox = driver.find_element(:xpath, "//label[contains(.,'Tomato')]")
#tomato_checkbox.click
#sleep(*5)


