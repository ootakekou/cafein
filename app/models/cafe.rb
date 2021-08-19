class Cafe < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  geocoded_by :address
  after_validation :geocode 

  validates :drink_name, presence: true
  validates :text, presence: true
  validates :image, presence: true
end
