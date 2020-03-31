Rails.application.routes.draw do
  get 'welcome/home'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/update'

  get 'sessions/edit'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  post 'sessions/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
