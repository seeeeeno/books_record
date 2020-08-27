Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :books, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: [:index]
end
