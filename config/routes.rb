Rails.application.routes.draw do

  get 'shop' => 'store_front#index'

  get 'about' => 'store_front#about'

  resource :cart, only: [:edit, :update, :destroy]
  resources :line_items, only: [:create]
  resources :orders, only: [:new, :create, :show]
  devise_for :users
  scope :admin do
  resources :products
  resources :brands
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  
  root 'store_front#index'
  
end
