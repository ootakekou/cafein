FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'ko1994'}
    password_confirmation {password}
    first_name            {'山田'}
    last_name             {'大郎'}
    first_kana            {'ヤマダ'}
    last_kana             {'タロウ'}
    birthday              {'1994-01-01'}
  end
end