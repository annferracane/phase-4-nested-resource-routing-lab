Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show] 
    resource :items, only: [:index]
  end
end
