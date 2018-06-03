$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require "page-object"
require 'test/unit'
require "webdriver_manager"
require 'selenium-webdriver'
require 'pageobjects/google_search_page'
require 'pageobjects/search_results_page'
require 'driverutil/driver_util'

