require 'spec_helper'

describe :Visitor do
  context "a site visitor" do
    before(:all) do 
      @post = create :post, title: "Post Title", body: "Post Body"
      @page = create :page, name: "Page Name", body: "Page Body"
    end

    context "visit the homepage" do
      before(:each) do 
        visit root_path
      end

      it "sees post title and body" do 
        page.should have_content(@post.title)
        page.should have_content(@post.body)
      end

      it "has link to the post page" do
        click_link @post.title
        current_path.should == post_path(@post)
      end

      it "has link to the category page" do
        click_link @post.category.title
        current_path.should == category_path(@post.category)
      end 

      it "has link to other pages" do
        click_link @page.name
        current_path.should == page_path(@page)
      end 
    end

    context "visit a page" do
      before(:each) do 
        visit page_path(@page)
      end 

      it "sees the page name and body" do
        page.should have_content(@page.name)
        page.should have_content(@page.body)
      end
    end
  end
end
