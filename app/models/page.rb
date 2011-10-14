class Page < ActiveRecord::Base
  def self.find_by_iname(name)
    find(:first, :conditions => ['name like ?', name])
  end

  def to_param
    name
  end

  def to_s
    name
  end

  validates :name,     :presence => true
  validates :body,      :presence => true
end
