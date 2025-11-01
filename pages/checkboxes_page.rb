class CheckboxesPage
  URL = "https://the-internet.herokuapp.com/checkboxes"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL)
  end

  def checkbox(index)
    @browser.checkboxes[index]
  end

  def check(index)
    checkbox(index).set
  end

  def uncheck(index)
    checkbox(index).clear
  end

  def checked?(index)
    checkbox(index).set?
  end
end
