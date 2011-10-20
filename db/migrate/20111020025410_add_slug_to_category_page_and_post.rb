class AddSlugToCategoryPageAndPost < ActiveRecord::Migration
  def change
    add_column :categories, :slug, :string, :unique => true
    add_index :categories, :slug, :unique => true

    add_column :posts, :slug, :string, :unique => true
    add_index :posts, :slug, :unique => true

    add_column :pages, :slug, :string, :unique => true
    add_index :pages, :slug, :unique => true
  end
end
