class Category < ActiveRecord::Base
  has_many :posts

  def to_param
    "#{id}-#{title.gsub(' ', '_')}"
  end

  def to_s
    title
  end
end
