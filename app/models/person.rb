class Person < ApplicationRecord
  validates :name, presence: true

  validates :age, presence: { message: "を入力してください" }
  validates :age, length: { maximum: 3 }
  validates :age, numericality: true

  validates :email, presence: { message: "を入力してください" }
  validates :email, uniqueness: true

  validates :password, presence: { message: "を入力してください" }
  validates :password, uniqueness: true
end
