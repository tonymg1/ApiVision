Rails.application.routes.draw do
  resources :users, only: [] do
    resources :libraries, only: [:show]
  end

  resources :movies, only: [:index, :show] do
    member do
      get 'purchase_options', to: 'movies/purchase_options#show'
    end
  end

  resources :seasons, only: [:index, :show] do
    member do
      get 'purchase_options', to: 'seasons/purchase_options#show'
    end
  end

  resources :purchase_options, only: [:show]
end
