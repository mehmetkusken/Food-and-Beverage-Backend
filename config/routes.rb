Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  resources :favorites
  resources :restaurants
  resources :users
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'
  
end
