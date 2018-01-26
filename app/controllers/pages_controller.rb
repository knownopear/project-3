class PagesController < ApplicationController

  def home
    @all_services = Service.all

  end

  def about
  end

end
