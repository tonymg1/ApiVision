Rails.application.routes.draw do
  resources :users, only: [] do
    resources :libraries, only: [:index, :create]
  end

  resources :movies, only: [:index, :show] 

  resources :seasons, only: [:index, :show] 



  resources :purchase_options, only: [:index, :create]
end