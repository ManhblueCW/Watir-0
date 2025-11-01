require_relative "spec_helper"
require_relative "../pages/inputs_page"

RSpec.describe "Inputs" do
  it "sets number value" do
    page = InputsPage.new(@browser)
    page.visit

    page.set_number(123)
    expect(page.value).to eq("123")
  end
end
