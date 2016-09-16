class Category < ApplicationRecord
  has_many :articles
  validates :name, :presence => true

  def self.search(search)
    # if search
      find_by_name(search)
      # find_by_name(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    # else
    #   find(:all)
    # end
  end
end
