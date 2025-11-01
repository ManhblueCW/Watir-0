class AddRemovePage
  URL = "https://the-internet.herokuapp.com/add_remove_elements/"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL)
  end

  def add_element
    @browser.button(text: "Add Element").click
  end

  def delete_buttons
    @browser.buttons(text: "Delete")
  end

  def delete_first
    delete_buttons.first.click if delete_buttons.any?
  end

  def count
    delete_buttons.count
  end
end
