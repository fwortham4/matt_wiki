class Article < ApplicationRecord
  belongs_to :category
  # belongs_to :author, {:class_name => "User"}
  validates_presence_of :title, :content, :author_id, :category_id
  validates_uniqueness_of :title
end
