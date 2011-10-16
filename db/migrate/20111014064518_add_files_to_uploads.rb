class AddFilesToUploads < ActiveRecord::Migration
  def up
    add_column :uploads, :file_file_name,    :string
    add_column :uploads, :file_content_type, :string
    add_column :uploads, :file_file_size,    :integer
    add_column :uploads, :file_updated_at,   :datetime
  end

  def down
    remove_column :uploads, :file_file_name
    remove_column :uploads, :file_content_type
    remove_column :uploads, :file_file_size
    remove_column :uploads, :file_updated_at
  end
end
