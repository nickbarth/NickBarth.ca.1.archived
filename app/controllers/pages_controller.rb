class PagesController < ApplicationController
  def show
    p_name = params[:name].to_s.upcase
    @page = Page.find_by_name(p_name)
    # raise params.inspect
    # raise @page.inspect
  end
end
