Rails.application.routes.draw do
  resources :recipes
  resources :friendships
  # resources :ingredients

  ### HOME PAGE (The Jump Off)
  root 'welcome#new'
  get '/home', to: 'welcome#show', as: 'home'


  ### LOGIN (form 1)
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get 'sessions/new'
  # get 'sessions/create'
  get 'sessions/destroy'


  ### INVITES (form 2)
  get '/invite', to: 'invitations#new', as: 'invite'
  post '/invite', to: 'invitations#create'
  get '/invite_index', to: 'invitations#index', as: 'invitee_index'
  get 'invitations/new'
  get 'invitations/create'
  get 'invitations/destroy'
  #? add delete for revoking invite?#


  ### REGISTRATION (form 3)
  #get /register/(no token), send to error page indicating that a token is required
  post '/register', to: 'registration#create', as: 'register_create'
  get '/register/:token', to: 'registrations#new', as: 'register'

  get 'registrations/new'
  get 'registrations/create'


  ### RECIPE (form 4)
  #form 4: create a recipe
  #done


end
