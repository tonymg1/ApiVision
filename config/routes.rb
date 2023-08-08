Rails.application.routes.draw do
  resources :episodes
  resources :seasons
  resources :movies
  resources :libraries
  resources :purchase_options
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
