class User < ApplicationRecord
  has_many :user_actors, dependent: :destroy
  has_many :actors, through: :user_actors

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  has_secure_password
end
