class Post < ActiveRecord::Base
  belongs_to :category

  def to_param
    "#{id}-#{title.gsub(' ', '_')}"
  end

  def to_s
    title
  end
end
