require 'spec_helper'

describe Post do
  context "when a new category is created" do
    before(:all) do
      @post = Post.new
    end
    
    it "should have a title, body, and category" do
      @post.should respond_to :title
      @post.should respond_to :body
      @post.should respond_to :category
    end

    it "should require a title, body, and category" do
      @post.should_not be_valid
      @post.should have(1).error_on(:title)
      @post.should have(1).error_on(:body)
      @post.should have(1).error_on(:category)
    end
  end
end
