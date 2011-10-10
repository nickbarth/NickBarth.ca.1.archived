require 'spec_helper'

describe "Blog" do
  before(:all) do 
    category = Category.create(:title => "Test Category")
    post = Post.create(:title => "Test Post", :body => "A Post", :category => category)
  end

  describe "index" do

    before(:all) do 
      visit posts_path
    end

    it "should exist" do 
      response.status.should be(200)
    end 

    it "should display posts" do 
      page.should have_content("Test Post")
    end

    it "should link to the post pages"

    it "should have a link to the posts category" do
      page.should have_content("Test Category")
    end 
  end

  describe "post" do
    before(:all) do 
      visit post_path(post)
    end

    it "should exist" do 
      response.status.should be(200)
    end 
  end
end
