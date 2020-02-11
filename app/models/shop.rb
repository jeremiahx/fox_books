class Shop < ApplicationRecord

  has_many :shop_inventories

  def inventory
    self.shop_inventories
  end

  def pub_inventory(publisher)
    ShopInventory.joins(:book).where(:books => {publisher_id: publisher})
  end

  def pub_inventory_sold_count(publisher)
    ShopInventory.joins(:book).where(:books => {publisher_id: publisher}).sum(:sold)
  end

  def pub_inventory_in_stock_count(publisher)
    ShopInventory.joins(:book).where(:books => {publisher_id: publisher}).sum(:in_stock)
  end


end
