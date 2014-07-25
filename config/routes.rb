Rails.application.routes.draw do

  resources :users
  resources :companies
  resources :customers
  resources :events

  root to: "home#index"
end
