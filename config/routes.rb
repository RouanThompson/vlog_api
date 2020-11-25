Rails.application.routes.draw do
  # resources :users
  # all http routes

  # resources :users, only: [:create]
  # makes only one.

  get '/users', to: 'users#show'
  # [http request] [server url_path], to [controller#action]
  post '/users', to: 'users#create'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
