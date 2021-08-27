Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member do
      get :likes
    end
  end
  root to: "caves#index"
  resources :caves do
    resources :likes, only: [:index, :create, :destroy]
    collection do
      get 'search'
    end
  end
end