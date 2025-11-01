require_relative "spec_helper"
require_relative "../pages/challenging_dom_page"

RSpec.describe "Challenging DOM Page" do
  before(:each) do
    @page = ChallengingDomPage.new(@browser)
    @page.visit
  end

  it "nút blue hoạt động bình thường" do
    expect(@page.blue_button).to exist
    @page.blue_button.click
    sleep 1
  end

  it "nút red hoạt động bình thường" do
    expect(@page.red_button).to exist
    @page.red_button.click
    sleep 1
  end

  it "nút green hoạt động bình thường" do
    expect(@page.green_button).to exist
    @page.green_button.click
    sleep 1
  end

  it "đọc được tiêu đề cột trong bảng" do
    headers = @page.table_headers
    puts "Tiêu đề cột: #{headers.join(", ")}"
    expect(headers).to include("Lorem", "Ipsum")
  end

  it "kiểm tra số hàng và cột của bảng" do
    rows = @page.row_count
    cols = @page.column_count
    puts "Bảng có #{rows} hàng và #{cols} cột"
    expect(rows).to be > 0
    expect(cols).to be > 0
  end

  it "in ra dữ liệu của hàng đầu tiên" do
    first_row = (0...@page.column_count).map { |c| @page.cell_text(0, c) }
    puts "Hàng 0: #{first_row.join(" | ")}"
    expect(first_row).not_to be_empty
  end
end
