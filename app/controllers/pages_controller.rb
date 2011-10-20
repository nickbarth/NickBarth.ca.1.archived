class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
    not_found if not @page 
  end
end
