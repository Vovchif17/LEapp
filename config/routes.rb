Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  #get 'session/new'
  #get 'users/new'
  root 'static_pages#home'
  get '/help',      to: 'static_pages#help'
  get '/about',     to: 'static_pages#about'
  get '/contact',   to: 'static_pages#contact'
  get '/signup',    to: 'users#new'
  get '/login',     to: 'session#new'
  post '/login',    to: 'session#create'
  delete '/loguot', to: 'session#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
end