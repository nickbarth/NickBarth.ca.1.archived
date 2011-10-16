ActiveAdmin.register Upload do
  index do
    column :file do |upload|
      image_tag upload.file.url(:small)
    end
    column "Links", :file do |upload|
      (link_to "Large - "+upload.file_file_name, upload.file.url(:large), { :target => :blank }) + 
      raw("<br/>") +
      (link_to "Medium - "+upload.file_file_name, upload.file.url(:medium), { :target => :blank }) + 
      raw("<br/>") +
      (link_to "Small - "+upload.file_file_name, upload.file.url(:small), { :target => :blank })
    end
    default_actions
  end

  show do
    h3 upload.file_file_name
    div do
      image_tag upload.file.url(:large)
    end
  end

  form do |f|
    f.inputs do
      f.input :file
    end
    f.buttons
  end
end
