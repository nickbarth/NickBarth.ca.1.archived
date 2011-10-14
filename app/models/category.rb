class Category < ActiveRecord::Base
  has_many :posts

  def to_param
    title
  end

  def to_s
    title
  end

  validates :title,     :presence => true
  default_scope :order => :title
end
