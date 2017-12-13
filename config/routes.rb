Rails.application.routes.draw do

  get 'users/new'

  root "homepage#index"

  namespace :api do
    resources :restaurants, only: [:index, :show, :create] do
      resources :reviews, only: [:index, :create] do

      end
    end
  end

  resources :restaurants, only: [:index, :show]


end
