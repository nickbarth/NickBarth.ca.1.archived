require 'spec_helper'

describe Page do
  context "a new page" do
    before(:all) do
      @page = Page.new
    end
  
    subject { @page }

    context "has a name and a body" do
      it { should respond_to :name }
      it { should respond_to :body }
    end

    context "requires a name and a body" do
      it { should_not be_valid }
      it { should have(1).error_on(:name) }
      it { should have(1).error_on(:body) }
    end
  end
end
