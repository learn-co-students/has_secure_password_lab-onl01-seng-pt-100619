Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'users#index'
  get 'users/new', to: 'users#new', as: '/signup'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  resources :users
  resources :sessions, only: [:create, :new]
end
