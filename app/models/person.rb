class Person < ApplicationRecord
  has_secure_password(validations: false)

  validates :name, presence: true

  validates :age, presence: { message: "を入力してください" }
  validates :age, length: { maximum: 3 }
  validates :age, numericality: true

  validates :email, presence: { message: "を入力してください" }
  validates :email, uniqueness: true

  validates :password_digest, presence: { message: "を入力してください" }
  validates :password_digest, uniqueness: true
end
