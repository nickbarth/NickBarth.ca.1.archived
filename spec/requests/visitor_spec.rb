require 'spec_helper'

describe "a visitor to the site" do
  before(:all) do 
    @post = create :post, title: "Post Title", body: "Post Body"
    @page = create :page, name: "Page Name", body: "Page Body"
  end

  context "when they visit the homepage" do
    before(:each) do 
      visit root_path
    end

    it "should display posts" do 
      page.should have_content(@post.title)
      page.should have_content(@post.body)
    end

    it "should link to the post pages" do
      click_link @post.title
      current_path.should == post_path(@post)
    end

    it "should have a link to the posts category" do
      click_link @post.category.title
      current_path.should == category_path(@post.category)
    end 
  end

  context "when they visit a page" do
    before(:each) do 
      visit page_path(@page)
    end 

    it "should display the page name and body" do
      page.should have_content(@page.name)
      page.should have_content(@page.body)
    end
  end
end
