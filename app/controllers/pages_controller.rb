class PagesController < ApplicationController

  def home
    @all_services = Service.all
    @user = User.new
  end

  def about
  end
end
