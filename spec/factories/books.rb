FactoryBot.define do
  factory :book do
    token { Faker::String.random }
    title { Faker::Games::Myst.creature }
    description { Faker::Games::Myst.quote }
    author { Faker::Games::Zelda.character }
  end
end
