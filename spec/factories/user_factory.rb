FactoryBot.define do
  factory :user do
    email { "sbmusicfreak15@msn.com" }
    password { "1234567890" }
    admin { false }
  end
end
