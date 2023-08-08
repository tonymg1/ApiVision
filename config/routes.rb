Rails.application.routes.draw do
  resources :users, only: [] do
    resources :libraries, only: [:show]
  end

  resources :movies, only: [:index, :show] do
    resources :purchase_options, only: [:create], controller: 'movies/purchase_options'
  end

  resources :seasons, only: [:index, :show] do
    resources :purchase_options, only: [:create], controller: 'seasons/purchase_options'
  end

  resources :purchase_options, only: [:show]

end
