class Upload < ActiveRecord::Base
  has_attached_file :file, :styles => { :large => "500x500>", :medium => "250x250>", :small => "100x100>" }
  validates :file_file_name, :presence => true
end
