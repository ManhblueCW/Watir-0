require_relative "spec_helper"
require_relative "../pages/checkboxes_page"

RSpec.describe "Checkboxes" do
  it "checks and unchecks boxes" do
    page = CheckboxesPage.new(@browser)
    page.visit

    page.check(0)
    expect(page.checked?(0)).to be true

    page.uncheck(0)
    expect(page.checked?(0)).to be false
  end
end
