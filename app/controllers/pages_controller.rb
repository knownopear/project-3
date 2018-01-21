class PagesController < ApplicationController
  def home
    # render 'pages/root'
  end
end


  def about


  end
end



  def bookservices


  end
end


  def login


  end
end


  def signup


  end
end


root 'pages#home' # get '/' 

get '/about', to: 'pages#about'
get '/bookservices', to: 'pages#bookservices'
get '/login', to: 'pages#login'
get '/signup', to: 'pages#signup'