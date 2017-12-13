Rails.application.routes.draw do

  root "restaurants#index"

  namespace :api do
    resources :restaurants, only: [:index, :show, :create] do
      resources :reviews, only: [:index, :create] do

      end
    end
  end

  resources :restaurants, only: [:index, :show]


end
