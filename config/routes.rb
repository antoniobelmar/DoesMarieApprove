Rails.application.routes.draw do

  get 'restaurants/index'

  # get 'homepage/index'
  root "homepage#index"
  resources :restaurants


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
