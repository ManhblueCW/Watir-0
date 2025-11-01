require_relative "spec_helper"
require_relative "../pages/upload_page"

RSpec.describe "File Upload" do
  it "uploads a file successfully" do
    page = UploadPage.new(@browser)
    page.visit

    file = File.expand_path("../test_files/sample.txt", __dir__)
    page.upload(file)

    expect(page.uploaded_filename).to eq("sample.txt")
  end
end
