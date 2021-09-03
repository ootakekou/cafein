require 'rails_helper'

RSpec.describe Cafe, type: :model do
  before do
    @cafe = FactoryBot.build(:cafe)
  end

  describe '投稿機能' do
   context '投稿できる時' do
    it '全てが保存すれば登録できる' do
      expect(@cafe).to be_valid
    end
   end
   context '投稿できない時' do 
    it 'drink_nameが空の場合登録できない' do
       @cafe.drink_name = ''
       @cafe.valid?
       expect(@cafe.errors.full_messages).to include("Drink name can't be blank")
   end
   it 'textが空の場合登録できない' do
      @cafe.text = ''
      @cafe.valid?
      expect(@cafe.errors.full_messages).to include("Text can't be blank")
   end
   it '住所が空の場合登録できない' do
      @cafe.address = ''
      @cafe.valid?
      expect(@cafe.errors.full_messages).to include("Address can't be blank")
   end
   it '画像が空の場合登録できない' do
    @cafe.images = nil
    @cafe.valid?
     expect(@cafe.errors.full_messages).to include("Images can't be blank")
   end
   it 'Userが紐付いていないと登録できない' do
    @cafe.user = nil
    @cafe.valid?
    expect(@cafe.errors.full_messages).to include("User must exist")
   end
  end
 end
end
