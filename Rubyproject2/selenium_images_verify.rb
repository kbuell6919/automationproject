require 'selenium/webdriver'

driver = Selenium::WebDriver.for :firefox

driver.manage.window.maximize

driver.get"https://www.elderscrollsonline.com/en-us/home/"

cookie_accept_btn = driver.find_element(:xpath, "//div[@class='cb accept']").click

watch_trailer = driver.find_element(:xpath, "//div[@class='btn-inside'][contains(text(), 'Watch TrailerWatch Trailer']").click

