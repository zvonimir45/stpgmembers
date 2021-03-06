Rails.application.routes.draw do

  get 'password_resets/new'
  get 'password_resets/edit'
  root   'static_pages#home'
  
  get '/help',      to: 'static_pages#help'
  get '/about',     to: 'static_pages#about'
  get '/contacts',  to: 'static_pages#contacts'
  get '/links',     to: 'static_pages#links'
  get '/sitemap',   to: 'static_pages#sitemap'
  get '/staff',     to: 'static_pages#staff'

  get '/signup',    to: 'users#new'

  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users

  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]

end
