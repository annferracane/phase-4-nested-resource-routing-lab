Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show] do
    resources :items, only: [:show]
  end
end