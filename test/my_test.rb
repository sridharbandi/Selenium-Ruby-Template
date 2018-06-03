require_relative "test_helper"

$args = ARGV.dup
class MyTest < Test::Unit::TestCase

  def setup
    @driver = DriverUtil.getDriver($args[0])
    @driver.manage.window.maximize
    @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    @google = GoogleSearchPage.new(@driver)
    @results = SearchResultsPage.new(@driver)
  end

  def teardown
    @driver.quit
  end

  def google_test
    @google.open
    @google.search_for 'Selenium'
    assert(@wait.until {@results.search_result_present?}, "This was expected to be true")
  end
end