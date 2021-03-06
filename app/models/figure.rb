class Figure < ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, :through => :figure_titles

  def slug
    self.name.gsub(" ","-").downcase
  end

  def self.find_by_slug(slug)
    self.all.find{ |x| x.slug == slug}
  end

  # extend Slugifiable::ClassMethods
  # include Slugifiable::InstanceMethods
end
