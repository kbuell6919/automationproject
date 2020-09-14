require 'watir'

class LoginPage

  def initialize(browser)
    @browser=browser
  end

  def enter_username(usernameData)
    @browser.text_field(:id, "email").set usernameData
  end


  def enter_password(passwordData)
    @browser.text_field(name:"pass").set passwordData
  end

  def click_login_button()
    @browser.button(xpath: "//button[@id='u_0_b']").click
  end

end
