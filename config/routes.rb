Rails.application.routes.draw do
  devise_for :users
  root 'shops#index'
  resources :shops, only: :show do
    resources :reviews, only: [:new, :create]
      collection do
        get 'search'
      end
  end
  resources :users, only: :show do
  end
end
