Rainforest::Application.routes.draw do
  root :to => "products#index"

  resources :products do
  	resources :reviews, :except => [:index]
  end
  resources :users, :only => [:new, :create]
  resources :sessions, :only => [:new, :create, :destroy]
end
