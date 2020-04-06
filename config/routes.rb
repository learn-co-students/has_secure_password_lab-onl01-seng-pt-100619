Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/homepage', to: 'users#index', as: 'homepage'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
end
