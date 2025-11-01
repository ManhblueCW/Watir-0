class LoginPage
  URL = "https://the-internet.herokuapp.com/login"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL)
  end

  def login(username, password)
    @browser.text_field(id: "username").set(username)
    @browser.text_field(id: "password").set(password)
    @browser.button(type: "submit").click
  end

  def success_message?
    flash = @browser.div(id: "flash")
    flash.exists? && flash.text.include?("You logged into a secure area!")
  end

  def error_message?
    flash = @browser.div(id: "flash")
    flash.exists? && (flash.text.include?("Your username is invalid!") ||
                      flash.text.include?("Your password is invalid!"))
  end
end
