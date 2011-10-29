require 'spec_helper'

describe Post do
  context "a new post" do
    before(:all) do
      @post = Post.new
    end
     
    subject { @post }

    context "has a title, body, and category" do
      it { should respond_to :title }
      it { should respond_to :body }
      it { should respond_to :category }
    end

    context "requires a title, body, and category" do
      it { should_not be_valid }
      it { should have(1).error_on(:title) }
      it { should have(1).error_on(:body) }
      it { should have(1).error_on(:category) }
    end
  end
end
