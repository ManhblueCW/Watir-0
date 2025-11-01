require_relative "spec_helper"
require_relative "../pages/login_page"

RSpec.describe "Login" do
  it "valid credentials" do
    page = LoginPage.new(@browser)
    page.visit
    page.login("tomsmith", "SuperSecretPassword!")
    expect(page.success_message?).to be true
  end
  it "wrong passwd" do
    page = LoginPage.new(@browser)
    page.visit
    page.login("tomsmith", "WrongPassword")
    expect(page.error_message?).to be true
  end
  it "wrong username" do
    page = LoginPage.new(@browser)
    page.visit
    page.login("wronguser", "SuperSecretPassword!")
    expect(page.error_message?).to be true
  end
  it "empty field" do
    page = LoginPage.new(@browser)
    page.visit
    page.login("", "")
    expect(page.error_message?).to be true
  end
end
