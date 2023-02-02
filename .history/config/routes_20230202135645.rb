Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show] do 
    resource :items, only: [:index]
  end
end
