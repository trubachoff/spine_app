Rails.application.routes.draw do

  resources 'users'
  resources 'companies'

  root :to => "home#index"
end
