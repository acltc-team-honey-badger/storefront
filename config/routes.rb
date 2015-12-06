Rails.application.routes.draw do
  devise_for :users

  root to: "products#index"

  resources :products
  post "/products/search" => 'products#search'

  get "/carted_products" => 'carted_products#index'
  post "/carted_products" => 'carted_products#create'
  delete "/carted_products/:id" => 'carted_products#destroy'

  post "/orders" => 'orders#create'

  get "/orders/:id" => 'orders#show'

  resources :suppliers
end
