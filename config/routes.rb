Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root :to => 'restaurant#index'

  resources :restaurant, only: [:index]
  post 'restaurant/create'
  post 'voter/create'

end
