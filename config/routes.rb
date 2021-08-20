Rails.application.routes.draw do
  devise_for :users
  root to: "cafes#index"
  resources :cafes do
    resources :likes, only: [:index, :create, :destroy]
  end
end