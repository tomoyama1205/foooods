Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  resources :shops, only: :show do
    resources :reviews, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  root 'shops#index'
end