Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :users, only: [:edit, :update]
  resources :books do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:index]
end
