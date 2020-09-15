require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.get "https://www.columbusitbootcamp.com"
sleep(*3)
forum_button = driver.find_element(:xpath, "//div[@id='comp-k8m1l30u5bg']")
forum_button.click
sleep(*3)
signup_button = driver.find_element(:xpath, "//a[@role='link'][contains(.,'Sign Up')]")
signup_button.click
sleep(*3)
signup_email = driver.find_element(:xpath, "//button[contains(.,'Sign up with email')]")
signup_email.click
sleep(*3)

driver.get "https://www.columbusitbootcamp.com"
sleep(*3)
forum_button = driver.find_element(:xpath, "//div[@id='comp-k8m1l30u5bg']")
forum_button.click
sleep(*3)
#driver.switch_to.frame 'signUpDialogsocialLoginIframe'
driver.switch_to.frame driver.find_element(:xpath, "//iframe[@id='memberLoginDialogsocialLoginIframe']")
facebook_signup = driver.find_element(:xpath, "//div[contains(@id,'fb-login-text')]")
facebook_signup.click
sleep(*3)
driver.quit

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.get "https://www.columbusitbootcamp.com"
sleep(*3)
forum_button = driver.find_element(:xpath, "//div[@id='comp-k8m1l30u5bg']")
forum_button.click
sleep(*3)
#driver.switch_to.frame 'signUpDialogsocialLoginIframe'
driver.switch_to.frame driver.find_element(:xpath, "//iframe[@id='memberLoginDialogsocialLoginIframe']")
google_signup = driver.find_element(:xpath, "//div[contains(@id,'ggl-login-text')]")
google_signup.click
sleep(*3)
