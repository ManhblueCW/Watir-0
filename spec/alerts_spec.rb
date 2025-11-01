require_relative "spec_helper"
require_relative "../pages/alerts_page"

RSpec.describe "JavaScript Alerts" do
  it "handles JS alert" do
    page = AlertsPage.new(@browser)
    page.visit

    page.click_js_alert
    page.alert_accept

    expect(page.result_text).to include("You successfully clicked an alert")
  end

  it "handles JS confirm" do
    page = AlertsPage.new(@browser)
    page.visit

    page.click_js_confirm
    page.alert_dismiss

    expect(page.result_text).to include("You clicked: Cancel")
  end

  it "handles JS prompt" do
    page = AlertsPage.new(@browser)
    page.visit

    page.click_js_prompt
    page.alert_set_text("hello")

    expect(page.result_text).to include("hello")
  end
end
