require_relative "spec_helper"
require_relative "../pages/dynamic_loading_page"

RSpec.describe "Dynamic Loading" do
  it "loads content after clicking start" do
    page = DynamicLoadingPage.new(@browser)
    page.visit

    page.start
    expect(page.result_text).to eq("Hello World!")
  end
end
