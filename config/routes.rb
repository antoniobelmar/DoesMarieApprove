Rails.application.routes.draw do

  root "restaurants#index"

  namespace :api do
    resources :restaurants, only: [:index, :show] do
      resources :reviews, only: [:index, :create] do

      end
    end
  end

  resources :restaurants, only: [:index, :new, :create, :edit, :update, :show, :destroy]

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]



end
