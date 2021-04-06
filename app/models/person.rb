class Person < ApplicationRecord
  include BCrypt
  has_secure_password

  validates :name, presence: true

  validates :age, presence: true
  validates :age, length: { maximum: 3 }
  validates :age, numericality: true

  validates :email, presence: { message: "を入力してください" }
  validates :email, uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
