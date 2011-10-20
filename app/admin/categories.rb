ActiveAdmin.register Category do
  index do
    column :title do |p|
      link_to p.title, edit_admin_category_path(p.id)
    end
    column "Published Date", :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
    end
    f.buttons
  end
end
