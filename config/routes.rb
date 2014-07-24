Rails.application.routes.draw do

  resources 'users'
  resources 'companies'
  resources 'customers'

  root :to => "home#index"
end
