class AlertsPage
  URL = "https://the-internet.herokuapp.com/javascript_alerts"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL)
  end

  def click_js_alert
    @browser.button(text: "Click for JS Alert").click
  end

  def click_js_confirm
    @browser.button(text: "Click for JS Confirm").click
  end

  def click_js_prompt
    @browser.button(text: "Click for JS Prompt").click
  end

  def alert_accept
    @browser.alert.ok
  end

  def alert_dismiss
    @browser.alert.close
  end

  def alert_set_text(text)
    @browser.alert.set(text)
    @browser.alert.ok
  end

  def result_text
    @browser.p(id: "result").text
  end
end
