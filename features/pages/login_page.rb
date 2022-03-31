# encoding: utf-8

class LoginPage < SitePrism::Page
  path = '/login.php'
  set_url(ENV['BASE_URL'] + path)

  element :username_field, :xpath, "//input[@name='uname']"
  element :password_field, :xpath, "//input[@name='pass']"
  element :login_button, :xpath, "//input[@value='login']"
  
  def input_username_password(email, password)
    wait_until_username_field_visible(wait: 10)
    username_field.set(email)
    password_field.set(password)
  end

  def click_login_button
    login_button.click
  end  
end