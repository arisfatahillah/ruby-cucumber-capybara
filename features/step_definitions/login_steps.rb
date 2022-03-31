
Given(/^user go to login page/) do
  @browser = LoginPage.new
  @browser.load
end
    
When(/^user login using email "([^"]*)" and password "([^"]*)"$/) do |email, password|
  @browser.input_username_password(email, password)
  @browser.click_login_button
end
  
Then(/^user successfully login/) do
  sleep 2
  expect(page).to have_css("#mainLayer")
  expect(page).to have_content('On this page you can visualize or edit you user information.')
end
  