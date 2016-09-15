class Article < ApplicationRecord
  belongs_to :category
  has_many :versions
  validates_presence_of :category_id

end
