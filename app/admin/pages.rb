ActiveAdmin.register Page do

  index do
    column :title do |p|
      link_to p.name, edit_admin_page_path(p.id)
    end
    column "Published Date", :created_at
  end

end
