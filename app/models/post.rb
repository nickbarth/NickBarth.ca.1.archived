class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :slugged

  belongs_to :category

  def to_s
    title
  end

  validates :title,    :presence => true
  validates :body,     :presence => true
  validates :category, :presence => true

  default_scope order("created_at DESC")
end
