Rails.application.routes.draw do
  root "homepage#index"

  get 'api/restaurants'

  get 'api/restaurants/:id', to: 'api#restaurantsid'

  get 'api/restaurants/:id/reviews', to: 'api#restaurant_reviews'

  # resources :api do
  #
  #   get ':id', to: 'api#restaurantsid'
  #
  # end
end
