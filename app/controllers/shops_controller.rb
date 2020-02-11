class ShopsController < ApplicationController

  def sale

    item = ShopInventory.find_by_book_id(params[:book_id])

    item.sold = item.sold - params[:sold].to_i
    item.in_stock = item.in_stock - params[:sold].to_i
    item.save!

    head 200

  end

end
