require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require 'capybara/poltergeist'
require 'dotenv'

BROWSER = ENV['BROWSER']

Capybara.register_driver :selenium do |app|

    if BROWSER.eql?('chrome')
      Capybara::Selenium::Driver.new(app,
      :browser => :chrome,
      :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
          'args' => [ "--start-maximized", "--disable-dev-shm-usage"],
        }
      )
    )
    elsif BROWSER.eql?('firefox')
      Capybara::Selenium::Driver.new(app, :browser => :firefox)

Capybara.default_max_wait_time = 10
Capybara.ignore_hidden_elements = false
