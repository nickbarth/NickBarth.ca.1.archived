module ApplicationHelper

  def pages
    Page.all
  end

  def categories
    Category.all
  end

  def markdown(text, options = nil)
    options ||= [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    Redcarpet.new(text, *options).to_html.html_safe
  end

  def admin?
    false
  end

end
