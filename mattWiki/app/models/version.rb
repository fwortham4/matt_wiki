class Version < ApplicationRecord
  belongs_to :article
  belongs_to :author, {:class_name => "User"}
  validates_presence_of :title, :content, :author_id, :article_id
end
