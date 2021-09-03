class Cafe < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  geocoded_by :address
  after_validation :geocode 
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user, dependent: :destroy

  validates :drink_name, presence: true
  validates :text, presence: true
  validates :address, presence: true
  validates :images, presence: true
end