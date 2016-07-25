Rails.application.routes.draw do
  resources :recipes
  resources :friendships
  
  get 'registrations/new'
  get 'registrations/create'

  get 'invitations/new'
  get 'invitations/create'
  get 'invitations/destroy'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  # resources :ingredients
  root 'welcome#new'
  get '/home', to: 'welcome#show', as: 'home'



  #form 1: login
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  #form 2: invite
  get '/invite', to: 'invitations#new', as: 'invite'
  post '/invite', to: 'invitations#create'
  get '/invite_index', to: 'invitations#index', as: 'invitee_index'
  #? add delete for revoking invite?#

  #form 3: sign up
  get '/register', to: 'registrations#new', as: 'register'
  post '/register', to: 'registration#create', as: 'register_create'

  #form 4: create a recipe
  #done


  #
  # #### REFERENCE aka GET RID OF ME
  #   # Login
  #   get '/login' => 'sessions#new', as: 'login'
  #   post '/login' => 'sessions#create', as: 'create_login'
  #
  #   # Logout
  #   delete '/logout' => 'sessions#destroy', as: 'logout'
end
