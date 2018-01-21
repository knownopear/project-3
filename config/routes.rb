Rails.application.routes.draw do
  root 'pages#home'
  # This sets the root page '/' to pages/home
  get '/about', to: 'pages#about'
  get '/book', to: 'pages#book'
  get '/login', to: 'pages#login'
  get '/signup', to: 'pages#signup'

end
