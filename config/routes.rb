Rails.application.routes.draw do

  root 'pages#home'
  get '/about', to: 'pages#home'
  get '/logout', to: 'pages#home'
  get '/thanks', to: 'pages#thanks'

  devise_for :users,
  path: '',
  path_names: {
   sign_in: 'login',
   sign_out: 'logout',
   password: 'secret',
   registration: 'register',
   # can change to registration: 'signup', <= to change the routes
   sign_up: ''
  }
end


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
