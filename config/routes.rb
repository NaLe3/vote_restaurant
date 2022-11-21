Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to => 'session#index'

  resources :session, only: [:index, :show]
  
  post 'session/create'
  get  'restaurant/index'
  post 'restaurant/create'
  post 'voter/create'

end
