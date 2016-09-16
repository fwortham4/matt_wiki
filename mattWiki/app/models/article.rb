class Article < ApplicationRecord
  belongs_to :category
  has_many :versions
  accepts_nested_attributes_for :versions
  validates_presence_of :category_id



end
