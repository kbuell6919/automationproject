require 'watir'
require 'test/unit'
require '../Base/CreateDriver'
require '../pages/login'
require '../Assertions/Compare'

class Tc_001 <BaseClass

  def testCase1
    login = LoginPage.new @@browser
    validate=Compare.new
    actRes= validate.validatepageurl @@browser, "https://www.facebook.com/"
    assert_true(actRes,"error  - Actual URL is not matched with Expected")
    login.enter_username "Testing@123"
    login.enter_password "Abcd"
    login.click_login_button
  end


end