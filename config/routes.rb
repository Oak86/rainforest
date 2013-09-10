Rainforest::Application.routes.draw do
  root :to => "products#index"
  resources :products

  get "products/show"
  get "products/new"
end
