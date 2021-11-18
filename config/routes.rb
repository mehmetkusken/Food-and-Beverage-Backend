Rails.application.routes.draw do
  resources :restaurants
  resources :users
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'
end
