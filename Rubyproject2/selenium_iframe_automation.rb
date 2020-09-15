require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox

driver.manage.window.maximize

driver.get "https://www.zoho.com/crm/lp/login/.html"

quick_tour_btn =driver.find_element(:link_text, "Quick Tour")

driver.switch_to.frame("zohoiam")

email_textbox = driver.find_element(:id, "lid")
email_textbox.send_keys("test@gmail.com")
