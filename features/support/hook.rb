require_relative 'helper.rb'

Before do |feature|
  Capybara.configure do |config|
    config.default_driver = :selenium
  end

  Capybara.default_max_wait_time = 60
  Capybara.current_session.driver.browser.manage.window.maximize
end

After do |scenario|
  @helper = Helper.new
  
  ## take screenshot if scenario failed
  if scenario.failed?
    @helper.take_screenshot(scenario.name, 'screenshots/test_failed')
  end
 
  Capybara.current_session.driver.quit
end
