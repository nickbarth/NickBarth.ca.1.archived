class CategoriesController < ApplicationController
  def show
    category = Category.find(params[:id])
    @posts = Post.where(:category_id => category.id).page(params[:page]).per 3
    render :template => 'posts/index'
  end
end
