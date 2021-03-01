class Person < ApplicationRecord
  validates :age, length: { maximum: 3 }
  validates :email, uniqueness: true
end
