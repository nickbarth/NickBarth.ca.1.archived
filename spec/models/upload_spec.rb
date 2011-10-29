require 'spec_helper'

describe Upload do
  context "a new upload" do
    before(:all) do
      @upload = Upload.send :new
    end

    subject { @upload }

    context "has a file name" do
      it { should respond_to :file_file_name }
    end
    
    context "requires a file name" do
      it { should_not be_valid }
      it { should have(1).error_on(:file_file_name) }
    end
  end
end
