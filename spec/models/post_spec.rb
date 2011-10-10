require 'spec_helper'

describe Post do
  it "should initialized a valid model" do
    post = Post.send :new
    post.should respond_to :title
    post.should respond_to :body
    post.should respond_to :category
  end
end
