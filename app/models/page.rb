class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged

  def to_s
    name
  end

  validates :name, :presence => true
  validates :body, :presence => true
end
