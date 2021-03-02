class Person < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: { message: "を入力してください" }
  validates :age, length: { maximum: 3 }

  validates :email, presence: { message: "を入力してください" }
  validates :password, presence: { message: "を入力してください" }

  validates :age, numericality: true
  validates :email, uniqueness: true
end
