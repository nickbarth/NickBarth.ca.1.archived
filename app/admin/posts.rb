ActiveAdmin.register Post do
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
      simple_format Markdown.new(post.body).to_html.html_safe
    end
  end

  form do |f|
    f.inputs "Create Post" do
      f.input :title
      f.input :created_at
      f.input :category
      f.input :body
    end
    f.buttons
  end
end
