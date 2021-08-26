Rails.application.routes.draw do
  resources :canciones
  resources :perros
  root "products#index"

  resources :products

  get 'api_products', to: 'products#api_products'

  get 'products/:id/price', to: 'products#price_with_taxes'
end
