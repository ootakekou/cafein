class Like < ApplicationRecord
  belongs_to :cafe
  belongs_to :user
  validates_uniqueness_of :cafe_id, scope: :user_id
end
