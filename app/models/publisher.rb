class Publisher < ApplicationRecord

  has_many :books


  def shops
    Shop.where(id: ShopInventory.where(book_id: Publisher.first.books.pluck(:id)).pluck(:shop_id))
  end



end
