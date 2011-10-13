class PagesController < ApplicationController
  def show
    @page = Page.find_by_iname(params[:id])
    not_found if not @page 
  end
end
