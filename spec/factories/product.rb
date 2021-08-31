require 'faker'

FactoryBot.define do
  factory :product do
    name { Faker::Lorem.word }
    summary { Faker::Lorem.sentence(word_count: 3 }
    price { rand(0.5..200) }
  end
end