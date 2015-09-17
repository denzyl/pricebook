class User < ActiveRecord::Base

  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :password_digest, presence: true, on: :create, length: {minimum: 5}
end