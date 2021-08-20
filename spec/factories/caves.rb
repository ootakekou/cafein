FactoryBot.define do
  factory :cafe do
    drink_name                 {'コーヒー'}
    text                       {'価格200円、よき場所'}
    address                    {'東京都渋谷区1-2-3'}
    association :user
    after(:build) do |cafe|
      cafe.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
