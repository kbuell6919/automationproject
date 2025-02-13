require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

#Maximize the window
driver.manage.window.maximize

#Navigate to the website
driver.get "https://open.spotify.com"
sleep (2)

#Login
login_button = driver.find_element(:xpath, "//div/button[text() = 'Log in']")
login_button.click
sleep(1)

#Use Facebook
fb_button = driver.find_element(:xpath, "//div/div/div/div/div/a[@analytics-event='Facebook Button']")
fb_button.click
sleep(1)

#Enter credentials
fb_email = driver.find_element(:xpath, "//div/input[@name='email']")
fb_email.send_keys("username")
fb_password = driver.find_element(:xpath, "//div/input[@name='pass']")
fb_password.send_keys("password")
fblogin = driver.find_element(:xpath, "//div/button[@name='login']")
fblogin.click
sleep(4)

#Click the search button
search_button = driver.find_element(:xpath, "//body//li[2]")
search_button.click
sleep(3)

#Search for a song
search = driver.find_element(:xpath, "//div//input")
search.send_keys("One Big Bed")
sleep(3)

#Play the song
play_button = driver.find_element(:xpath, "//*[@id='searchPage']/div/div/section[1]/div/div[2]/div/div/div/div[4]")
play_button.click
sleep(15)

