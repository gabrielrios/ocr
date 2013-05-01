root = File.expand_path('../..', __FILE__)
require File.join(root, %w[lib ocr])

describe OCR do
  it "should be correct size" do
  	OCR.use :dummy
  end

  context "free_ocr" do
    it "should read image" do
      ocr = OCR.use :free_ocr
      ocr.username = "dananos"
      ocr.file = File.join(root, 'spec', "sample_image.gif")
      ocr.recognize
      ocr.should_not be_error
      ocr.text.should == "none"
    end
  end
end
