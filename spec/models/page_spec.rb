require 'spec_helper'

describe Page do
  context "when a new category is created" do
    before(:all) do
      @page = Page.new
    end
  
    it "should have a name and a body" do
      @page.should respond_to :name
      @page.should respond_to :body
    end

    it "should require a name and a body" do
      @page.should_not be_valid
      @page.should have(1).error_on(:name)
      @page.should have(1).error_on(:body)
    end
  end
end
