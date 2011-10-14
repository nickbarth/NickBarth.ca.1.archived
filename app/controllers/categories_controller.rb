class CategoriesController < ApplicationController
  def show
    category = Category.find :first, :conditions => { :title => params[:id] }
    @posts = Post.where(:category_id => category.id) .page(params[:page]).per 5
    render :template => 'posts/index'
  end
end
