Rails.application.routes.draw do
  
  resources :favorites, only: [:index, :show, :create, :destroy]
  resources :characters, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
