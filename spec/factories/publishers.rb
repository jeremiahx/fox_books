FactoryBot.define do
  factory :publisher do
    name { Faker::Games::Myst.creature }
  end
end
