require "watir"
require "rspec"

RSpec.configure do |config|
  config.add_formatter "RspecJunitFormatter", "reports/xml/rspec_#{Time.now.strftime("%Y%m%d-%H%M%S")}.xml"
  config.before(:each) do
    @browser = Watir::Browser.new :edge, options: { args: ["--headless", "--log-level=3"] }
  end

  config.after(:each) do |example|
    timestamp = Time.now.strftime("%Y%m%d-%H%M%S")
    test_name = example.full_description
      .downcase
      .gsub(/[^\w\s_-]/, "")
      .gsub(/\s+/, "_")

    if example.exception && @browser&.exists?
      screenshot_dir = "reports/screenshot"
      Dir.mkdir("reports") unless Dir.exist?("reports")
      Dir.mkdir(screenshot_dir) unless Dir.exist?(screenshot_dir)
      file_name = "FAIL_#{test_name}_#{timestamp}.png"
      @browser.screenshot.save("#{screenshot_dir}/#{file_name}")
    end

    @browser&.quit
  end
end
