require_relative "../../test/test_helper"
class DriverUtil
  class << DriverUtil
    def getDriver(browser)
      case browser
      when "chrome" then
        Selenium::WebDriver.for :chrome
      when "firefox" then
        Selenium::WebDriver.for :firefox
      when "ie" then
        Selenium::WebDriver.for :ie
      when "edge" then
        Selenium::WebDriver.for :edge
      else
        Selenium::WebDriver.for :chrome
      end
    end
  end
end