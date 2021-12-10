Rails.application.routes.draw do
  resources :dog_parks, only: [:create, :index, :show]
  resources :users, only: [:index, :show, :create]
  resources :sessions, only: [:create] 
  resources :posts, only: [:index, :create, :destroy]
  get "/me", to: "sessions#autologin"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html