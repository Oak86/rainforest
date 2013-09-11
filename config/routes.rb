Rainforest::Application.routes.draw do
  get "users/new"

  get "users/create"

  root :to => "products#index"

  resources :products
  resources :users, :only => [:new, :create]
end
