require_relative "spec_helper"
require_relative "../pages/dropdown_page"

RSpec.describe "Dropdown" do
  it "selects option 1" do
    page = DropdownPage.new(@browser)
    page.visit

    page.select_option("Option 1")
    expect(page.selected).to eq("Option 1")
  end
end
