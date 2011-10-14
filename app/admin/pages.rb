ActiveAdmin.register Page do

  index do
    column :title do |p|
      link_to p.name, edit_admin_page_path(p.id)
    end
    column "Published Date", :created_at
  end

  member_action :update do
    page = Page.find(:first, :conditions => { :name => params[:id]} )
    page.name =  params[:page][:name]
    page.body =  params[:page][:body]
    page.save
    redirect_to :back, :notice => "Page Updated"
  end

end
