require 'spec_helper'

describe Category do
  context "a new category" do
    before(:all) do
      @category = Category.new
    end

    subject { @category }
    
    context "has a title and posts" do
      it { should respond_to :title }
      it { should respond_to :posts }
    end

    context "requires a title" do
      it { should_not be_valid }
      it { should have(1).error_on(:title) }
    end
  end
end
