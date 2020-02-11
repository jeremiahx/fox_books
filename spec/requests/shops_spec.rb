# frozen_string_literal: true

require 'rails_helper'


RSpec.describe 'Shops', type: :request do
  let!(:publisher) { create(:publisher) }
  let!(:shop) { create(:shop) }
  let!(:book) { create(:book, publisher: publisher) }
  let!(:shop_inventory) { create(:shop_inventory, book: book, shop: shop) }

  describe 'GET Shops/id/book/id/sale' do
    context 'with shop inventory' do
      it 'marks a book as sold' do

        post "/shops/#{shop.id}/book/#{book.id}", params: { sold: 3}

        expect(response.status).to eq(200)
        expect(shop_inventory.sold).to eq(3)

      end
    end
  end

end
