FactoryBot.define do
  factory :person do
    name { "asanon" }
    age { 20 }
    sequence(:email) { |n| "asanon#{n}@example.com" }
    password { "password" }
  end
end
