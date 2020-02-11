FactoryBot.define do
  factory :shop_inventory do
    in_stock { 3 }
    sold { 3 }
  end
end
