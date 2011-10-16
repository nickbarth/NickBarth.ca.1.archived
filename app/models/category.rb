class Category < ActiveRecord::Base
  has_many :posts

  def self.find_by_ititle(title)
    find(:first, conditions: ['title like ?', title])
  end

  def to_param
    title.parameterize
  end

  def to_s
    title
  end

  validates :title, presence: true
  default_scope(order: "-title")
end
