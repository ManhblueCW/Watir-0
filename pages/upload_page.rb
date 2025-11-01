class UploadPage
  URL = "https://the-internet.herokuapp.com/upload"

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto(URL)
  end

  def upload(file_path)
    @browser.input(id: "file-upload").set(file_path)
    @browser.input(id: "file-submit").click
  end

  def uploaded_filename
    @browser.h3(text: "File Uploaded!").wait_until(&:present?)
    @browser.div(id: "uploaded-files").text
  end
end
