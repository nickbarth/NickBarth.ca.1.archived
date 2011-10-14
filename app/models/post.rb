class Post < ActiveRecord::Base
  belongs_to :category

  def to_param
    "#{id}-#{title.parameterize}"
  end

  def to_s
    title
  end

  validates :title,     :presence => true
  validates :body,      :presence => true
  validates :category,  :presence => true

  default_scope order("created_at DESC")
end
