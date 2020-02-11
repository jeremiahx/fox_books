json.shops do
  @publisher.shops.each do |shop|
        json.name shop.name
        json.books_sold_count shop.pub_inventory_sold_count(@publisher.id)
        json.book_sold_in_stock shop.pub_inventory_in_stock_count(@publisher.id)
        json.books_in_stock do
          shop.pub_inventory(@publisher.id).each do |item|
            json.id item.book.id
            json.title item.book.title
            json.copies_in_stock item.in_stock
          end
        end
  end
end