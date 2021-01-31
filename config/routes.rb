Rails.application.routes.draw do
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
end