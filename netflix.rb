require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

#Maximize the window
driver.manage.window.maximize

#Navigate to the website
driver.get "https://www.netflix.com/"

#find element for sign in
sleep(*3)
sign_in_btn = driver.find_element(:xpath, "//a[@class='authLinks redButton']")
sign_in_btn.click
sleep(*5)

#find element for userName
username = driver.find_element(:xpath, "//input[@id='id_userLoginId']")
#Type login in that username textbox
username.send_keys("cm783604@ohio.edu")

#find password textbox
password = driver.find_element(:xpath, "//input[@id='id_password']")
password.send_keys("squirtle07")
sleep(*3)


#Find the sign in button
submit_btn= driver.find_element(:xpath, "//button[@class='btn login-button btn-submit btn-small']")
submit_btn.click
sleep(*5)

#Click on the profile icon
profile_btn = driver.find_element(:xpath,"//div[contains(@class,'profile-icon')][1]")
profile_btn.click
sleep(*3)

#TV Show Tab Selection
tvshow_selector = driver.find_element(:xpath, "//a[@href='/browse/genre/83'][contains(.,'TV Shows')][1]")
tvshow_selector.click
sleep(*3)

#play_button = driver.find_element(:xpath, "//svg[contains(@viewBox,'0 0 24 24')]")
#play_button.click

puts("Test Passed")

