Rails.application.routes.draw do
  devise_for :users
  root to: "caves#index"
  resources :caves do
    resources :likes, only: [:index, :create, :destroy]
    collection do
      get 'search'
    end
  end
end