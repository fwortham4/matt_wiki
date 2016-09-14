class User < ApplicationRecord
  has_secure_password
  has_many :articles
  has_many :edits

  validates_presence_of :username, :email, :first_name, :last_name
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
