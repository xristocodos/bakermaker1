Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  # resources :ingredients
  root 'welcome#greeting'
  resources :recipes
  resources :friendships

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  #
  # #### GET RID OF ME
  #   # Login
  #   get '/login' => 'sessions#new', as: 'login'
  #   post '/login' => 'sessions#create', as: 'create_login'
  #
  #   # Logout
  #   delete '/logout' => 'sessions#destroy', as: 'logout'
end
