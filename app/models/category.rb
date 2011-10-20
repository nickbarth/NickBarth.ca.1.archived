class Category < ActiveRecord::Base
  has_many :posts

  extend FriendlyId
  friendly_id :title, :use => :slugged

  def to_s
    title
  end

  validates :title, presence: true
  default_scope(order: "-title")
end
