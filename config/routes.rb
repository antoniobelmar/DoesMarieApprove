Rails.application.routes.draw do

  root "homepage#index"

  resources :restaurants

  get 'api/restaurants'

  get 'api/restaurants/:id', to: 'api#restaurantsid'

  get 'api/restaurants/:id/reviews', to: 'api#restaurant_reviews'

  resources :users

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
