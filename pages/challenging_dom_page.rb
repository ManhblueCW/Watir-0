class ChallengingDomPage
  URL = "https://the-internet.herokuapp.com/challenging_dom"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL)
  end

  # ===== BUTTONS =====
  def blue_button
    @browser.a(class: "button")
  end

  def red_button
    @browser.a(class: ["button", "alert"])
  end

  def green_button
    @browser.a(class: ["button", "success"])
  end

  # ===== TABLE =====
  def table
    @browser.table
  end

  def table_headers
    table.thead.ths.map(&:text)
  end

  def row_count
    table.tbody.trs.size
  end

  def column_count
    table.tbody.trs.first.tds.size
  end

  def cell_text(row, col)
    table.tbody.trs[row].tds[col].text
  end
end
