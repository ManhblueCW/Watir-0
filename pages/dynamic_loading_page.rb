class DynamicLoadingPage
  URL_EXAMPLE_2 = "https://the-internet.herokuapp.com/dynamic_loading/2"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL_EXAMPLE_2)
  end

  def start
    @browser.button(text: "Start").click
  end

  def result_text
    elem = @browser.div(id: "finish")
    elem.wait_until(&:present?)
    elem.text
  end
end
