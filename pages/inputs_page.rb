class InputsPage
  URL = "https://the-internet.herokuapp.com/inputs"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL)
  end

  def set_number(n)
    @browser.input(type: "number").set(n)
  end

  def value
    @browser.input(type: "number").value
  end
end
