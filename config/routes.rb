BeyondLifeMe::Application.routes.draw do

  # Home Page
  match '/' => "static_pages#index", :as => :root

  # Session routes
  get '/signin' => 'sessions#new', :as => 'signin'
  post '/sessions' => 'sessions#create', :as => 'sessions'
  delete '/signout' => 'sessions#destroy', :as => 'signout'

  # OmniAuth for FB

  match 'auth/facebook/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')


  # Mission Static Page

  match '/mission' => "static_pages#mission", :as => 'mission'

  # Routes for the Guest_post resource:
  # CREATE
  get '/guest_posts/new', controller: 'guest_posts', action: 'new', as: 'new_guest_post'
  post '/guest_posts', controller: 'guest_posts', action: 'create'

  # READ
  get '/guest_posts', controller: 'guest_posts', action: 'index', as: 'guest_posts'
  get '/guest_posts/:id', controller: 'guest_posts', action: 'show', as: 'guest_post'

  # UPDATE
  get '/guest_posts/:id/edit', controller: 'guest_posts', action: 'edit', as: 'edit_guest_post'
  put '/guest_posts/:id', controller: 'guest_posts', action: 'update'

  # DELETE
  delete '/guest_posts/:id', controller: 'guest_posts', action: 'destroy'
  #------------------------------

  # Routes for the Trait_type resource:
  # CREATE
  get '/trait_types/new', controller: 'trait_types', action: 'new', as: 'new_trait_type'
  post '/trait_types', controller: 'trait_types', action: 'create'

  # READ
  get '/trait_types', controller: 'trait_types', action: 'index', as: 'trait_types'
  get '/trait_types/:id', controller: 'trait_types', action: 'show', as: 'trait_type'

  # UPDATE
  get '/trait_types/:id/edit', controller: 'trait_types', action: 'edit', as: 'edit_trait_type'
  put '/trait_types/:id', controller: 'trait_types', action: 'update'

  # DELETE
  delete '/trait_types/:id', controller: 'trait_types', action: 'destroy'
  #------------------------------

  # Routes for the Trait resource:
  # CREATE
  get '/traits/new', controller: 'traits', action: 'new', as: 'new_trait'
  post '/traits', controller: 'traits', action: 'create'

  # READ
  get '/traits', controller: 'traits', action: 'index', as: 'traits'
  get '/traits/:id', controller: 'traits', action: 'show', as: 'trait'

  # UPDATE
  get '/traits/:id/edit', controller: 'traits', action: 'edit', as: 'edit_trait'
  put '/traits/:id', controller: 'traits', action: 'update'

  # DELETE
  delete '/traits/:id', controller: 'traits', action: 'destroy'
  #------------------------------

  # Routes for the Person resource:
  # CREATE
  get '/people/new', controller: 'people', action: 'new', as: 'new_person'
  post '/people', controller: 'people', action: 'create'

  # READ
  get '/people', controller: 'people', action: 'index', as: 'people'
  get '/people/:id', controller: 'people', action: 'show', as: 'person'

  # UPDATE
  get '/people/:id/edit', controller: 'people', action: 'edit', as: 'edit_person'
  put '/people/:id', controller: 'people', action: 'update'

  # DELETE
  delete '/people/:id', controller: 'people', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------



end
