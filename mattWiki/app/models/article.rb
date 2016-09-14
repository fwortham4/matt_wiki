class Article < ApplicationRecord
  belongs_to :category
  belongs_to :author {:class_name "User"}
  validates :title, :content, :author_id, :category_id :presence => true
end
