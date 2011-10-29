require 'spec_helper'

describe Upload do
  context "when a new category is created" do
    before(:all) do
      @upload = Upload.send :new
    end

    it "should have a file name" do
      @upload.should respond_to :file_file_name
    end
    
    it "should require a file name" do
      @upload.should_not be_valid
      @upload.should have(1).error_on(:file_file_name)
    end
  end
end
