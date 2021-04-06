class Location < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :prefecture, presence: true
  validates :municipalities, presence: true
  validates :address, presence: true
  validates :photo, presence: true
  validates :photo_description, presence: true

end
