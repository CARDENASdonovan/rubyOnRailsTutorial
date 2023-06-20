Rails.application.routes.draw do

  get "admins/home", to: "admins#home"
  get "users/home", to: "users#home"
  get "admins/manage_users", to: "admins#manage_users"
  
  root "home#index"

  devise_for :admins
  devise_for :users

  resources :articles
  resources :admins
  resources :users
end