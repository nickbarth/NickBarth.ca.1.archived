require 'spec_helper'

describe Category do
  context "when a new category is created" do
    before(:all) do
      @category = Category.new
    end

    it "should have a title and posts" do
      @category.should respond_to :title
      @category.should respond_to :posts
    end

    it "should require a title" do
      @category.should_not be_valid
      @category.should have(1).error_on(:title)
    end
  end
end
