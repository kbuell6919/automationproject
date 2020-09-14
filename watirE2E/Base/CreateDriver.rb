require 'watir'
require 'selenium-webdriver'
require 'test-unit'
require '../Utilities/configRead'

class BaseClass <Test::Unit::TestCase


  def setup
    Selenium::WebDriver.for :firefox
    @@browser =Watir::Browser.new :firefox
    @@browser.window.maximize
    config=ConfigRead.new
    @@browser.goto config.readconfigData("applicationURL")

  end

  def teardown
    @@browser.close
  end


end