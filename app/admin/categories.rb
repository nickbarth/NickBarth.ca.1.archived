ActiveAdmin.register Category do
  
  index do
    column :title do |p|
      link_to p.title, edit_admin_post_path(p)
    end
    column "Published Date", :created_at
    default_actions
  end

end
