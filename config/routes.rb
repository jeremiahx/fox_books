Rails.application.routes.draw do
  get 'publishers/:id/shops', to: 'publishers#shops'
  post 'shops/:id/book/:book_id', to: 'shops#sale'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
