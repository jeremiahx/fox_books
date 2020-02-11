FactoryBot.define do
  factory :shop do
    name { Faker::Games::Myst.creature }
  end
end
