class Cafe < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :drink_name, presence: true
  validates :text, presence: true
  validates :address, presence: true
  validates :image, presence: true
end
