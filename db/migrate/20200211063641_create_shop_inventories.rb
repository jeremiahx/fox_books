class CreateShopInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_inventories do |t|
      t.references :shop
      t.references :book
      t.integer :in_stock
      t.integer :sold

      t.timestamps
    end
  end
end
