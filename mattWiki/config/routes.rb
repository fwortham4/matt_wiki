Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homepage#index"

  resources :categories
  resources :articles
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :admin, only: [:show]

end
