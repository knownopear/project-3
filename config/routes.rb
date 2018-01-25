Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'

    get '/about', to: 'pages#about'
    get '/services', to: 'pages#services'

    get '/login', to: 'pages#login'
    get '/signup', to: 'pages#signup'

    get '/edit', to: 'pages#edit'
end


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
