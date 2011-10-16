ActiveAdmin.register Page do
  index do
    column :title do |p|
      link_to p.name, edit_admin_page_path(p.id)
    end
    column "Published Date", :created_at
    default_actions
  end

  member_action :update do
    page = Page.find_by_iname(params[:id])
    page.name =  params[:page][:name]
    page.body =  params[:page][:body]
    page.save
    redirect_to edit_admin_page_path(page.id), :notice => "Page Updated"
  end
end
