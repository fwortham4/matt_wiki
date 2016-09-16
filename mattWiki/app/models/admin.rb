class Admin < ApplicationRecord

  validate :num_of_admin, on: :create
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def num_of_admin
      errors.add(:email, "No more than 2 Admin") unless Admin.all.count < 2
  end
end
