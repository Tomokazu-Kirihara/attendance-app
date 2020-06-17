Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :days, only: [:index, :new, :create]
  resources :messages, only: [:index, :create]
end
