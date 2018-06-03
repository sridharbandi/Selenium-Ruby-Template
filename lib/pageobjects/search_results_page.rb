require_relative "../../test/test_helper"

class SearchResultsPage

  LINK_SELENIUM = {link_text: 'Selenium - Web Browser Automation'}
  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  def search_result_present?
    driver.find_element(LINK_SELENIUM).displayed?
  end

end