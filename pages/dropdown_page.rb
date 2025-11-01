class DropdownPage
  URL = "https://the-internet.herokuapp.com/dropdown"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL)
  end

  def select_option(text)
    @browser.select_list(id: "dropdown").select(text)
  end

  def selected
    @browser.select_list(id: "dropdown").selected_options.first.text
  end
end
