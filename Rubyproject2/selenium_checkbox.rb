require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox

driver.manage.window.maximize

driver.manage.timeouts.implicit_wait = 10

driver.get"https://www.w3.org/TR/wai-aria-practices/examples/checkbox/checkbox-1/checkbox-1.html"
sleep( 10)
lettuce_checkbox = driver.find_element(:xpath, "//div[@role='checkbox'][contains(.,'Lettuce')]")
lettuce_checkbox.click
lettuce_checkbox = driver.find_element(:xpath, "//div[@role='checkbox'][contains(.,'Tomato')]").click