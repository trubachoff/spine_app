Rails.application.routes.draw do

  get 'customres/index'

  get 'customres/show'

  get 'customres/new'

  get 'customres/create'

  get 'customres/update'

  get 'customres/destroy'

  resources 'users'
  resources 'companies'

  root :to => "home#index"
end
