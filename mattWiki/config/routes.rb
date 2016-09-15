Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :categories
  resources :articles do
    resources :versions
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  # resources :admins, only: [:show]

  get '/admins/:id', to: 'admins#show', as: 'admin'

  delete '/admins', to: 'devise/registrations#destroy', as: 'destroyAdmin'

  root "homepage#index"


end
