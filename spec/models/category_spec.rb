require 'spec_helper'

describe Category do
  it "should initialized a valid model" do
    category = Category.send :new
    category.should respond_to :title
    category.should respond_to :posts
  end
end
