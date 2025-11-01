require_relative "spec_helper"
require_relative "../pages/add_remove_page"

RSpec.describe "Add/Remove Elements" do
  it "adds and removes elements" do
    page = AddRemovePage.new(@browser)
    page.visit

    page.add_element
    page.add_element
    expect(page.count).to eq(2)

    page.delete_first
    expect(page.count).to eq(1)
  end
end
