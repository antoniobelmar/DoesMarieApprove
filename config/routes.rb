Rails.application.routes.draw do

  root "restaurants#index"

  namespace :api do
    resources :restaurants, only: [:index, :show, :create] do
      resources :reviews, only: [:index, :create] do

      end
    end
  end

  resources :restaurants, only: [:index, :show]

  resources :users

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
