class User < ApplicationRecord
  has_secure_password
  has_many :versions, foreign_key: :author_id

  validates_presence_of :username, :email, :first_name, :last_name
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
