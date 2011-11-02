ActiveAdmin.register Page do
  index do
    column :title do |p|
      link_to p.name, edit_admin_page_path(p.id)
    end
    column "Published Date", :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :body, input_html: { style: "font-family: 'Monaco, monospace';font-size:16px;" }
    end
    f.buttons
  end
end
