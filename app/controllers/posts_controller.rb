class PostsController < ApplicationController
  caches_page :index
  caches_page :show
  caches_page :feed

  def index
    @posts = Post.page(params[:page]).per 3
  end 

  def show
    @post = Post.find(params[:id])
  end

  def feed
    @title = "NickBarth.ca - Software Developer"
    @news_items = Post.all
    @updated = @news_items.first.updated_at unless @news_items.empty?
    
    respond_to do |format|
      format.atom { render :layout => false }
      format.rss { redirect_to feed_posts_path(:format => :atom), :status => :moved_permanently }
    end
  end
end
