Rails.application.routes.draw do
  get 'access/new'
  post 'access/new', to: 'access#create'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  resources :users
  resources :orders
  resources :carts
  resources :lineitems
  get 'shopper/index'
  resources :products
  root "shopper#index", as: 'root'
  get '/shopper', to: 'shopper#index'

  get '/admin', to: 'admin#index'
  get '/login', to: 'access#new'
  post '/login', to: 'access#create'
  get '/logout', to: 'access#destroy'
  post '/logout', to: 'access#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
