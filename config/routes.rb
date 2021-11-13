Rails.application.routes.draw do
  resources :dog_parks, only: [:create, :index]
  resources :users, only: [:index, :show]
  resources :sessions, only: [:create] 

  get "/me", to: 'sessions#autoLogin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 