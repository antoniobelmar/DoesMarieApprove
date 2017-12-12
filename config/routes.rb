Rails.application.routes.draw do
  get 'api/restaurants'

  root "homepage#index"

  get 'api/restaurants/:id', to: 'api#restaurantsid'

  # resources :api do
  #
  #   get ':id', to: 'api#restaurantsid'
  #
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
