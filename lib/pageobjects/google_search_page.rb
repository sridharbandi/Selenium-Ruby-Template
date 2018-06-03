require_relative "../../test/test_helper"

class GoogleSearchPage

  SEARCH_BOX = {id: 'lst-ib'}
  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  def open
    driver.get "http://www.google.com"
  end

  def search_for(search_term)
    driver.find_element(SEARCH_BOX).send_keys search_term
    driver.find_element(SEARCH_BOX).submit
  end

end