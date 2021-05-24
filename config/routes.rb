Rails.application.routes.draw do
  
  devise_for :users
  get 'cards/show'
  resources :products
  resources :shops,only:[:index, :show]

  resources :order_items
  resources :cards, only:[:show] 


  root 'shops#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
