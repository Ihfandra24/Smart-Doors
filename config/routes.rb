Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :groups
      resources :gates
      resources :gate_groups
      post "users/login", to: "users#login"
