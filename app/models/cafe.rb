class Cafe < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode 
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user, dependent: :destroy

  validates :drink_name, presence: true
  validates :text, presence: true
  validates :address, presence: true
  validates :image, presence: true
end