# frozen_string_literal: true

require 'rails_helper'


RSpec.describe 'Publishers', type: :request do
  let!(:publisher) { create(:publisher) }
  let!(:shop) { create(:shop) }
  let!(:book) { create(:book, publisher: publisher) }
  let!(:shop_inventory) { create(:shop_inventory, book: book, shop: shop) }

  describe 'GET Publishers/shop' do
    context 'with shop inventory' do
      it 'fetches the list of publishers' do
        get "/publishers/#{publisher.id}/shops.json", params: {}, headers: { "CONTENT_TYPE" => "application/json" }
        json_response = JSON.parse(response.body)
        expect(json_response.size).to eq(1)
        expect(response.status).to eq(200)
      end
    end
  end

end
