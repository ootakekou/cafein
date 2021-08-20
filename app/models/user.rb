class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cafes
  has_many :likes, dependent: :destroy
  has_many :liked_cafes, through: :likes, source: :cafe

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  with_options presence: true do
         validates :nickname
         validates :birthday
  with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } do
         validates :first_name
         validates :last_name
  end
  with_options format: { with: /\A[ァ-ンー－]+\z/ } do
         validates :first_kana
         validates :last_kana
  end
  end

  def already_liked?(cafe)
    self.likes.exists?(cafe_id: cafe.id)
  end

end
