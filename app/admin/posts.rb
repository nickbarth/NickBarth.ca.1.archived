ActiveAdmin.register Post do
  controller do
    cache_sweeper :post_sweeper, :only => [:create, :update, :destroy]  
  end

  index do
    column "ID", :id
    column :title do |p|
      link_to p.title, edit_admin_post_path(p)
    end
    column :category do |p|
      link_to p.category, admin_category_path(p.category)
    end
    column "Published Date", :created_at
  end

  show do
    h3 post.title
    div do
      markdown post.body
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :created_at
      f.input :category
      f.input :body, input_html: { style: "font-family: 'Monaco, monospace';font-size:16px;" }
    end
    f.buttons
  end
end
