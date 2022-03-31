# encoding: utf-8
require 'fileutils'
class Helper

  def scroll_page(horizontal, vertical, obj = self)
    obj.page.execute_script "window.scrollBy(#{horizontal},#{vertical})"
  end

  def reload_page
    page.execute_script "window.location.reload(true)"
  end
  
  def go_back
    page.evaluate_script('window.history.back()')
  end
  
  def take_screenshot(name_file, folder='screenshots/test_screens')
   file = "#{folder}/#{name_file}.png"
   FileUtils.mkdir_p(folder) unless File.exists?(folder)
   if BROWSER.eql?('poltergeist')
     Capybara.page.save_screenshot(file)
   else
     Capybara.page.driver.browser.save_screenshot(file)
   end
  end
  
end